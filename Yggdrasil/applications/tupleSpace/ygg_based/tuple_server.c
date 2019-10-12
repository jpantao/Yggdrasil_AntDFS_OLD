/*****************************************************************
 *
 * LinuxTuples - an open-source tuple space for Linux clusters
 * Copyright (c) 2003-2006, Will Ware <wware@alum.mit.edu>
 * Contributions (2006) by Bram Stolk.
 * All rights reserved.
 *
 *    Redistribution and use in source and binary forms, with or
 *    without modification, are permitted provided that the following
 *    conditions are met:
 *
 *    + Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 *    + Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *
 *    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
 *    CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
 *    INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 *    MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 *    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 *    CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 *    SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 *    LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
 *    USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 *    AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *    LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 *    IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
 *    THE POSSIBILITY OF SUCH DAMAGE.
 *
 ******************************************************************/

/**
 * \file tuple_server.c
 *
 * \brief The tuple server accepts incoming TCP connections and offers
 * clients access to the database.
 *
 * The tuple server is responsible for remaining stable while clients
 * misbehave, and making sure that client operations are atomic.
 * Client misbehavior can include things like badly-formed requests
 * and dropped network sockets.
 */

#include <assert.h>
#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netinet/tcp.h>
#include <pthread.h>
#include <semaphore.h>

#ifdef MACOSX
#include <malloc/malloc.h>
#include <netinet/in.h>
#define MSG_NOSIGNAL  SO_NOSIGPIPE
#else
#include <malloc.h>
#endif

#include "tuple.h"


#include "protocols/wireless/communication/routing/batman.h"
#include "protocols/wireless/communication/point-to-point/reliable.h"

/*
#ifndef SO_REUSEPORT
#define SO_REUSEPORT 15
#endif
*/

// When defined, the original semaphores are used, instead of the pthread
// mutexes. This causes a race condition to blocked_sem on SMP. (Bram)
#undef USE_SEMA

#ifdef USE_SEMA
sem_t log_sem;
#define GETLOG \
if (sem_wait(&log_sem)) perror("sem_wait");
#define YIELDLOG \
if (sem_post(&log_sem)) perror("sem_post");
#else
pthread_mutex_t log_mutex;
#define GETLOG \
if (pthread_mutex_lock(&log_mutex)) perror("pthread_mutex_lock");
#define YIELDLOG \
if (pthread_mutex_unlock(&log_mutex)) perror("pthread_mutex_unlock");
#endif

#define LOGPRINTF(fmt,a...)   \
   if (logptr<sizeof(logbuf)-80) { logptr += sprintf(logbuf+logptr, fmt, ##a); }
#define LOGTUPLE(s)    print_tuple(s);


void print_tuple_local(struct tuple* t, char* buff) {
    bzero(buff, 100);

    int i = 0;
    buff[i] = '('; i++;

    struct element e = t->elements[0];
    unsigned char* s = (unsigned char*)e.data.s.ptr;
    int n = e.data.s.len;

    for(int j = 0; j < n; j++) {
        buff[i] = s[j];
        i++;
    }

    buff[i] = ','; i++;
    i += sprintf(buff+i, "%d", t->elements[1].data.i);

    buff[i] = ','; i++;

    e = t->elements[4];
    s = (unsigned char*)e.data.s.ptr;
    n = e.data.s.len;

    for(int j = 0; j < n; j++) {
        buff[i] = s[j];
        i++;
    }

    buff[i] = ')';
}

#define LOGTUPLE_LOCAL(s, buff)    print_tuple_local(s, buff);

/**
 * \brief Doubly-linked list of tuples, for efficient insertions and
 * deletions.
 */
struct ttuple
{
	struct tuple *tuple;
	struct ttuple *next;
	struct ttuple *previous;
};

/**
 * Pointer to the first tuple in tuple space. When there is a
 * GET or READ operation, the search begins with the first tuple.
 */
static struct ttuple *first_message = NULL;

/**
 * Pointer to the last tuple in tuple space. When there is a PUT
 * operation, the tuple is put at the end of the list.
 */
static struct ttuple *last_message = NULL;



#define MAXNUMTHREADS 64

/**
 * Maintain a list of the clients currently trying to access tuple
 * space. Keep track of a pthread and a socket for each one.
 */
static struct context client_list[MAXNUMTHREADS];
static char status_list[MAXNUMTHREADS+1];


/**
 * Semaphore to make sure that all tuple operations are atomic. Each
 * client finishes his operation before the next guy is allowed to
 * begin.
 */
#ifdef USE_SEMA
static sem_t tuple_space_access;
#define GETACCESS \
if (sem_wait(&tuple_space_access)) perror("sem_wait");
#define YIELDACCESS \
if (sem_post(&tuple_space_access)) perror("sem_wait");
#else
static pthread_mutex_t access_mutex;
#define GETACCESS \
if (pthread_mutex_lock(&access_mutex)) perror("mutex_lock");
#define YIELDACCESS \
if (pthread_mutex_unlock(&access_mutex)) perror("mutex_unlock");
#endif



/**
 * When threads/clients block, they wait for this semaphore.
 */
#ifdef USE_SEMA
static int num_blocked=0;
static sem_t blocked_sem;
#else
static pthread_mutex_t blocked_mutex;
static pthread_cond_t  blocked_cond;
#endif


//static void print_status(void)
//{
//  int i;
//  static char lastprint[MAXNUMTHREADS+1];
//
//  if (!strcmp(lastprint, status_list)) return;
//  strcpy(lastprint, status_list);
//  fprintf(stderr,status_list);
//  for (i=0; i<MAXNUMTHREADS; i++)
//    fputc(8,stderr);
//  fflush(stderr);
//}


static void print_thread_func(void *varg)
{
  while (1)
  {
    //print_status();
    usleep(10000);
    fflush(stdout);
  }
}


/**
 * When we add a tuple to the space, we unblock all the clients
 * who are waiting for tuples, so they can check and see if this
 * is the one they want.
 */
static void
add_tuple_to_space(struct tuple *t)
{
	struct ttuple *s;
	s = (struct ttuple *)malloc(sizeof(struct ttuple));
	if (s == NULL) {
		perror("malloc failed");
		exit(1);
	}
	s->tuple = t;
	s->next = NULL;

	GETACCESS;
	if (last_message == NULL)
		first_message = s;
	else
		last_message->next = s;
	s->previous = last_message;
	last_message = s;
	YIELDACCESS;

	// wake up all blocked threads
#ifdef USE_SEMA
	while (num_blocked)
	{
		if (sem_post(&blocked_sem)) perror("sem_post");
		num_blocked--;
	}
#else
	if (pthread_mutex_lock(&blocked_mutex)) perror("mutex_lock");
	if (pthread_cond_broadcast(&blocked_cond)) perror("cond_broadcast");
	if (pthread_mutex_unlock(&blocked_mutex)) perror("mutex_unlock");
#endif
}



/**
 * Tuples are kept in a doubly-linked list, so there's a lot of
 * pointer-hacking here.
 */
static void
remove_message_from_space(struct ttuple *s)
{
	if (s->previous == NULL && s->next == NULL) {
		/* I am the only message */
		first_message = last_message = NULL;
	}
	else if (s->next == NULL) {
		/* I am the last message */
		last_message = s->previous;
		last_message->next = NULL;
	}
	else if (s->previous == NULL) {
		/* I am the first message */
		first_message = s->next;
		first_message->previous = NULL;
	}
	else {
		/* I have both a previous and a next */
		s->previous->next = s->next;
		s->next->previous = s->previous;
	}
}



/**
 *
 */
static void
kill_this_thread(struct context *arg)
{
#if 0
	GETLOG;
	LOGPRINTF("closing ctx %d to %s\n", arg->id, arg->peername);
	YIELDLOG;
#endif

	// If the thr field is -1, we signal that it is ready for re-use.
	assert(arg->thr != -1);
	arg->thr = -1;

	int clientnr = arg - client_list;
	status_list[clientnr]='-';

	pthread_exit(NULL);
}



/**
 * Handle GETs and READs, both blocking and non-blocking.
 */
static void
handle_get_read(struct context *ctx,
		struct tuple *s, int remove, int blocking, int op)
{
	struct ttuple *p;
	int clientnr = ctx - client_list;

	char buff[100];

#if 0
	GETLOG;
	LOGPRINTF("%s(%d) wants a tuple:", ctx->peername, ctx->id);
	LOGTUPLE(s);
	YIELDLOG;
#endif
	while (1) {
		status_list[clientnr]='a';
		GETACCESS;
		for (p = first_message; p != NULL; p = p->next) {
			if (tuples_match(p->tuple, s)) {
				if (remove) {
					remove_message_from_space(p);
				}
				YIELDACCESS;
				GETLOG;
				LOGPRINTF("%s(%d) %s a tuple:", ctx->peername, ctx->id, (remove)?"gets":"reads");
				LOGTUPLE(p->tuple);
				YIELDLOG;

				LOGTUPLE_LOCAL(p->tuple, buff);
				printf("%s(%d) %s a tuple: %s\n", ctx->peername, ctx->id, (remove)?"gets":"reads", buff);

				//WLANAddr dest = ctx->msg.header.src_addr.mac_addr;
				init_msg(&ctx->msg, ctx->peername, ctx->msg.Proto_id, ctx->server_ygg_id, ctx->rid);
				send_chunk(ctx, (char*) &op, sizeof(int));

				if (send_tuple(ctx, p->tuple)) {
					PRINTF("send_tuple failed\n");
					/* Assume the client died while blocked.
					 * If the tuple was removed, put it back.
					 * Otherwise just kill this thread.
					 */
					LOGPRINTF("send_tuple failed\n");
					LOGTUPLE(s);

					DBGPRINTF("remove=%d\n", remove);
					if (remove) {
						add_tuple_to_space(p->tuple);
						free(p);
						destroy_tuple(s);
						return;
					}

				}

                //ctx->msg.header.dst_addr.mac_addr = dest;
                send_to_destination(&ctx->msg);

				if (remove) {
					destroy_tuple(p->tuple);
					free(p);
				}
				destroy_tuple(s);
				return;
			}
		}

#if 0
		GETLOG;
		LOGPRINTF("Socket %d couldn't find a match for ", ctx->sock);
		LOGTUPLE(s);
		YIELDLOG;
#endif

		YIELDACCESS;
		if (blocking) {
			/* wait for a tuple that might match */
#ifdef USE_SEMA
			num_blocked++;
			if (sem_wait(&blocked_sem))
                          perror("sem_wait");
#else
			status_list[clientnr]='m';
			if (pthread_mutex_lock(&blocked_mutex)) 
				perror("mutex_lock");
			status_list[clientnr]='b';
			if (pthread_cond_wait(&blocked_cond, &blocked_mutex)) 
				perror("cond_wait");
			status_list[clientnr]='u';
			if (pthread_mutex_unlock(&blocked_mutex)) 
				perror("mutex_unlock");
#endif
		}
		else {
			/* don't wait, return a failure code */

            init_msg(&ctx->msg, ctx->peername, ctx->msg.Proto_id, ctx->server_ygg_id, ctx->rid);
            send_chunk(ctx, (char*) &op, sizeof(int));
			int ack = -1;
			if (send_chunk(ctx, (char *) &ack, sizeof(int)))
			{
				perror("Cannot send -1 return code");
			} else {
                ctx->msg.header.dst_addr.mac_addr = ctx->msg.header.src_addr.mac_addr;
                send_to_destination(&ctx->msg);
            }
			return;
		}
	}
}


/**
 * Handle REPLACE. This operation will not block.
 */
static void
handle_replace(struct context *ctx, struct tuple *template, struct tuple *replacement)
{
	int is_deleting=1, del_count=0;
	struct ttuple *p;
	int clientnr = ctx - client_list;
	int operation = REPLACE;

	status_list[clientnr]='a';
	GETACCESS;
	while (is_deleting) {
		for (p = first_message; p != NULL; p = p->next) {
			if (tuples_match(p->tuple, template)) {
				remove_message_from_space(p);
				del_count++;
				break;
			}
		}
		if (p == NULL)
			is_deleting = 0;
	}

	YIELDACCESS;

	GETLOG;
	LOGPRINTF("%s(%d) replaced %d tuples with:", ctx->peername, ctx->id, del_count);
	LOGTUPLE(replacement);
	YIELDLOG;

	status_list[clientnr]='p';
	add_tuple_to_space(replacement);

	/* send an ack, not sure if this is really req'd? */
    //WLANAddr dest = ctx->msg.header.src_addr.mac_addr;
    init_msg(&ctx->msg, ctx->peername, ctx->msg.Proto_id, ctx->server_ygg_id, ctx->rid);
    send_chunk(ctx, (char*) &operation, sizeof(int));
    //ctx->msg.header.dst_addr.mac_addr = dest;
    send_to_destination(&ctx->msg);

	destroy_tuple(template);
}


/**
 * When a client requests a dump or a count of the tuple space, handle
 * that here.
 */
static void
handle_dump_count_space(struct context *ctx, int dump)
{
	struct ttuple *p;
	int num_templates;
	struct tuple **templates = NULL;
	int i, ok, count;
	struct tuple_list *x, *tlist = NULL;

	recv_chunk(ctx, (char *) &num_templates, sizeof(int));

	if (num_templates) {
		templates =
			(struct tuple **) malloc(num_templates *
						 sizeof(struct tuple *));
		if (templates == NULL) {
			/* ? ? ? ? ? ? */
			return;
		}
		for (i = 0; i < num_templates; i++) {
			templates[i] = recv_tuple(ctx);
			if (templates[i] == NULL) {
				/* ? ? ? ? ? ? */
				return;
			}
		}
	}

	count = 0;
	GETACCESS;
	for (p = first_message; p != NULL; p = p->next) {
		ok = 0;
		for (i = 0; i < num_templates; i++) {
			if (tuples_match(p->tuple, templates[i])) {
				ok = 1;
				break;
			}
		}
		if (ok || num_templates == 0) {
			if (dump) {
				x = malloc(sizeof(struct tuple_list));
				if (x == NULL) {
					/* ? ? ? ? */
					return;
				}
				x->tup = p->tuple;
				x->next = tlist;
				tlist = x;
			}
			count++;
		}
	}

	send_chunk(ctx, (char *) &count, sizeof(int));

	for (x = tlist; x != NULL; x = x->next) {
		if (send_tuple(ctx, x->tup)) {
			/* Assume the client died.
			 */
			perror("send_tuple failed for dump operation");
			YIELDACCESS;
			return;
		}
	}
	YIELDACCESS;

	while (tlist) {
		x = tlist;
		tlist = tlist->next;
		free(x);
	}
	if (templates)
		free(templates);
}


/**
 * When a client makes a connection, find out what it wants, and do
 * that operation.
 */
static void *
client_thread_func(void *varg)
{
	struct context *ctx = (struct context *) varg;
	int clientnr = ctx - client_list;
	status_list[clientnr]='r';
	struct tuple *s, *t;
	unsigned int operation;

	//printf("Received conn %s %d  %p  %p\n", ctx->peername, ctx->msg.Proto_id, ctx->ptr, ctx->msg.data);
    printf("Received conn %s %d %d\n", ctx->peername, ctx->msg.Proto_id, ctx->rid);


#if 0
	int optval=1;
	/*
	 * Set some socket options, so that we have fast response
	 */
	if (setsockopt (ctx->sock, IPPROTO_TCP, TCP_NODELAY, &optval, sizeof (optval)))
		perror("setsockopt failed on TCP_NODELAY");
#endif

#if 0
	int reuseport=1;
	if (setsockopt(ctx->sock, SOL_SOCKET, SO_REUSEPORT, &reuseport, sizeof(int)))
		perror("setsockopt REUSEPORT");
#endif

	if (recv_chunk(ctx, (char *) &operation, sizeof(int))) {
		fprintf(stderr,"Could not receive an operation identifier from client\n");
		kill_this_thread(ctx);
	}
	if (operation == PUT) {
		status_list[clientnr]='r';
		s = recv_tuple(ctx);
		if (s == NULL) {
			fprintf(stderr,"Could not receive a template from client\n");
			kill_this_thread(ctx);
		}
		// advise peer that we stop receiving
//		GETLOG;
//		LOGPRINTF("*******************\n");
//		LOGPRINTF("PUT socket=%d  ", ctx->sock);
//		LOGTUPLE(s);
//		YIELDLOG;
		status_list[clientnr]='p';
#if 1
		GETLOG;
		LOGPRINTF("%s(%d) puts a tuple:", ctx->peername, ctx->id);
		LOGTUPLE(s);
		YIELDLOG;
#endif
		char buff[100];
        LOGTUPLE_LOCAL(s, buff);
        struct ttuple *p;
        int dup = 0;
        GETACCESS;
        for (p = first_message; p != NULL; p = p->next) {
            if(p->tuple->hash == s->hash) {
                dup = 1;
                break;
            }
        }
        YIELDACCESS
        if(dup) {
            printf("%s(%d) dups a tuple: %s\n", ctx->peername, ctx->id, buff);
        } else {
            printf("%s(%d) puts a tuple: %s\n", ctx->peername, ctx->id, buff);
            add_tuple_to_space(s);
        }
		// Why is this??? - Bram
		/* send an ack */
		YggMessage_freePayload(&ctx->msg);
		//WLANAddr dest = ctx->msg.header.src_addr.mac_addr;
		init_msg(&ctx->msg, ctx->peername, ctx->msg.Proto_id, ctx->server_ygg_id, ctx->rid);
		send_chunk(ctx, (char*) &operation, sizeof(int));
		//ctx->msg.header.dst_addr.mac_addr = dest;
		send_to_destination(&ctx->msg);

		// advise peer that we stop sending
	}
	else if (operation == GET) {
		status_list[clientnr]='r';
		s = recv_tuple(ctx);
		if (s == NULL) {
			fprintf(stderr,"Could not receive a template from client\n");
			kill_this_thread(ctx);
		}
		// advise peer that we stop receiving

//		GETLOG;
//
//		LOGPRINTF("*******************\n");
//		LOGPRINTF("GET socket=%d  ", ctx->sock);
//		LOGTUPLE(s);
//		YIELDLOG;
        YggMessage_freePayload(&ctx->msg);
		handle_get_read(ctx, s, 1, 1, operation);
		// advise peer that we stop sending

	}
	else if (operation == READ) {
		status_list[clientnr]='r';
		s = recv_tuple(ctx);
		if (s == NULL) {
			fprintf(stderr,"Could not receive a template from client\n");
			kill_this_thread(ctx);
		}
		// advise peer that we stop receiving

//		GETLOG;
//		LOGPRINTF("*******************\n");
//		LOGPRINTF("READ socket=%d  ", ctx->sock);
//		LOGTUPLE(s);
//		YIELDLOG;
        YggMessage_freePayload(&ctx->msg);
		handle_get_read(ctx, s, 0, 1, operation);
		// advise peer that we stop sending

	}
	else if (operation == GET_NB) {
		status_list[clientnr]='r';
		s = recv_tuple(ctx);
		if (s == NULL) {
			fprintf(stderr,"Could not receive a template from client\n");
			kill_this_thread(ctx);
		}
		// advise peer that we stop receiving

//		GETLOG;
//		LOGPRINTF("*******************\n");
//		LOGPRINTF("GET_NB socket=%d  ", ctx->sock);
//		LOGTUPLE(s);
//		YIELDLOG;
        YggMessage_freePayload(&ctx->msg);
		handle_get_read(ctx, s, 1, 0, operation);
	}
	else if (operation == READ_NB) {
		status_list[clientnr]='r';
		s = recv_tuple(ctx);
		if (s == NULL) {
			fprintf(stderr,"Could not receive a read template from client\n");
			kill_this_thread(ctx);
		}
		// advise peer that we stop receiving

//		GETLOG;
//		LOGPRINTF("*******************\n");
//		LOGPRINTF("READ_NB socket=%d  ", ctx->sock);
//		LOGTUPLE(s);
//		YIELDLOG;
        YggMessage_freePayload(&ctx->msg);
		handle_get_read(ctx, s, 0, 0, operation);
	}
	else if (operation == REPLACE) {
		status_list[clientnr]='r';
		t = recv_tuple(ctx);
		if (t == NULL) {
			fprintf(stderr,"Could not receive a replace template from client\n");
			kill_this_thread(ctx);
		}
		s = recv_tuple(ctx);
		if (s == NULL) {
			fprintf(stderr,"Could not receive a replace tuple from client\n");
			kill_this_thread(ctx);
		}
		// advise peer that we stop receiving
        YggMessage_freePayload(&ctx->msg);
		handle_replace(ctx, t, s);
	}
	else if (operation == DUMP) {
//		GETLOG;
//		LOGPRINTF("*******************\n");
//		LOGPRINTF("DUMP socket=%d\n", ctx->sock);
//		YIELDLOG;
		handle_dump_count_space(ctx, 1);
	}
	else if (operation == COUNT) {
//		GETLOG;
//		LOGPRINTF("*******************\n");
//		LOGPRINTF("COUNT socket=%d\n", ctx->sock);
//		YIELDLOG;
		handle_dump_count_space(ctx, 0);
	}
	else if (operation == LOG) {
//		GETLOG;
//		send(ctx->sock, logbuf, logptr, MSG_NOSIGNAL);
//		logptr = 0;
//		YIELDLOG;
//		/* kill thread, but don't LOGPRINTF */
//		close(ctx->sock);
//		ctx->thr = -1;
//		status_list[clientnr]='-';
		pthread_exit(NULL);
	}
	else {
		fprintf(stderr,
			"Bad operation: %08X\n", (unsigned int) operation);
	}
	kill_this_thread(ctx);
	return NULL;
}


typedef void *(*threadfunction) (void *);

/**
 * Set up a socket to listen for incoming requests. When one arrives,
 * start a pthread to handle it, and run client_thread_func().
 */
int
main(int argc, char *argv[])
{
	int i;
	pthread_attr_t threadattrs;
	size_t stacksz=0;
	int context_id=1;
	extern int pthread_setconcurrency(int new_level);

	i_am_server = 1;


	pthread_setconcurrency(MAXNUMTHREADS);
	pthread_attr_init(&threadattrs);
	pthread_attr_setdetachstate(&threadattrs, PTHREAD_CREATE_DETACHED);
	// We should not waste memory resource so use small stack sizes
	pthread_attr_getstacksize(&threadattrs, &stacksz);
//	stacksz = PTHREAD_STACK_MIN;
	stacksz = 32768;
	if (pthread_attr_setstacksize(&threadattrs, stacksz))
		perror("pthread_attr_setstacksize");
	pthread_attr_getstacksize(&threadattrs, &stacksz);
	assert(stacksz>0);
//	fprintf(stderr,"stacksz is %d\n", stacksz);


	for (i = 0; i < MAXNUMTHREADS; i++) {
		client_list[i].thr = -1;
		status_list[i] = '-';
	}
        status_list[i]=0;

#ifdef USE_SEMA
	sem_init(&tuple_space_access, 0, 1);
	sem_init(&log_sem, 0, 1);
	sem_init(&blocked_sem, 0, 0);
#else
	if (pthread_mutex_init(&access_mutex,0)) perror("pthread_mutex_init");
	if (pthread_mutex_init(&log_mutex,0)) perror("pthread_mutex_init");
	if (pthread_mutex_init(&blocked_mutex,0)) perror("pthread_mutex_init");
	if (pthread_cond_init(&blocked_cond,0)) perror("pthread_cond_init");
#endif

	pthread_t printthread_id;
	//if (getenv("LINUXTUPLES_STATUS"))
		pthread_create(&printthread_id, 0, (threadfunction) print_thread_func, 0);


    NetworkConfig* ntconf = defineWirelessNetworkConfig("AdHoc", 0, 5, 0, "ledge", YGG_filter);

    ygg_runtime_init(ntconf);

    batman_args* bargs = batman_args_init(false, false, 2, 0,16, DEFAULT_BATMAN_WINDOW_SIZE, 0);
    registerProtocol(PROTO_ROUTING_BATMAN, batman_init, bargs);
    batman_args_destroy(bargs);

    reliable_p2p_args* rargs = reliableP2PArgs_init(30, 0, 500000000, 10);
    registerProtocol(PROTO_P2P_RELIABLE_DELIVERY, reliable_point2point_init, rargs);
    reliableP2PArgs_destroy(rargs);


    short server_id = 500;

    app_def* myapp = create_application_definition(server_id, "MyApp");
    app_def_add_consumed_events(myapp, PROTO_P2P_RELIABLE_DELIVERY, FAILED_DELIVERY);
    queue_t* inBox = registerApp(myapp);

    ygg_runtime_start();


	while (1) {
		struct context ctx;
		ctx.inBox = inBox;
		ctx.server_ygg_id = 500;
		static int searchidx=0;
		ctx.id = context_id++;

        wait_delivery(&ctx.msg, &ctx.rid, &ctx.ptr, ctx.inBox);
		while(1) {

            if (ctx.msg.Proto_id == 500) {
                int op;
                recv_chunk(&ctx, (char*) &op, sizeof(int));
                if(op == GET || op == GET_NB) {
                    struct tuple* s = recv_tuple(&ctx);
                    if(s != (struct tuple*) -1) {
                        if(s == NULL) {
                          PERROR("Lost message has a NULL tuple...");
                        } else {
                            char buff[100];
                            LOGTUPLE_LOCAL(s, buff);
                            printf("server puts a tuple: %s\n", buff);
                            add_tuple_to_space(s);
                        }
                    }
                }
                YggMessage_freePayload(&ctx.msg);
                break;

            } else {
                if (client_list[searchidx].thr == -1) {
                    client_list[searchidx] = ctx;
                    //printf("Assinging thread: %p  %p\n", client_list[searchidx].ptr, client_list[searchidx].msg.data);
//                if(client_list[searchidx].ptr - (void*)client_list[searchidx].msg.data != 2)
//                    printf("memory corruption!\n");
                    wlan2asc(&ctx.msg.header.src_addr.mac_addr, client_list[searchidx].peername);

                    if (pthread_create(&client_list[searchidx].thr,
                                       &threadattrs,
                                       client_thread_func,
                                       &client_list[searchidx])
                        != 0) {
                        perror("pthread_create");
                        fprintf(stderr, "Threads are hosed\n");
                        EXIT();
                    }
                    searchidx = (searchidx + 1) % MAXNUMTHREADS;
                    break;
                } else
                    searchidx = (searchidx + 1) % MAXNUMTHREADS;
            }
        }
	}

	return 0;
}
