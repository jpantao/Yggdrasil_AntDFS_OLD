# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/jpantao/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/201.7846.88/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/jpantao/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/201.7846.88/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jpantao/Git/BScResearch/Yggdrasil

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug

# Include any dependencies generated for this target.
include Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/depend.make

# Include the progress variables for this target.
include Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/progress.make

# Include the compile flags for this target's objects.
include Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/flags.make

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/ygg_runtime.c.o: Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/flags.make
Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/ygg_runtime.c.o: ../Yggdrasil/core/ygg_runtime.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/ygg_runtime.c.o"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yggcore_wireless_new.dir/ygg_runtime.c.o   -c /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/ygg_runtime.c

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/ygg_runtime.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yggcore_wireless_new.dir/ygg_runtime.c.i"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/ygg_runtime.c > CMakeFiles/yggcore_wireless_new.dir/ygg_runtime.c.i

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/ygg_runtime.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yggcore_wireless_new.dir/ygg_runtime.c.s"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/ygg_runtime.c -o CMakeFiles/yggcore_wireless_new.dir/ygg_runtime.c.s

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/proto_data_struct.c.o: Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/flags.make
Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/proto_data_struct.c.o: ../Yggdrasil/core/proto_data_struct.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/proto_data_struct.c.o"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yggcore_wireless_new.dir/proto_data_struct.c.o   -c /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/proto_data_struct.c

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/proto_data_struct.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yggcore_wireless_new.dir/proto_data_struct.c.i"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/proto_data_struct.c > CMakeFiles/yggcore_wireless_new.dir/proto_data_struct.c.i

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/proto_data_struct.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yggcore_wireless_new.dir/proto_data_struct.c.s"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/proto_data_struct.c -o CMakeFiles/yggcore_wireless_new.dir/proto_data_struct.c.s

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/utils/utils.c.o: Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/flags.make
Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/utils/utils.c.o: ../Yggdrasil/core/utils/utils.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/utils/utils.c.o"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yggcore_wireless_new.dir/utils/utils.c.o   -c /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/utils/utils.c

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/utils/utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yggcore_wireless_new.dir/utils/utils.c.i"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/utils/utils.c > CMakeFiles/yggcore_wireless_new.dir/utils/utils.c.i

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/utils/utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yggcore_wireless_new.dir/utils/utils.c.s"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/utils/utils.c -o CMakeFiles/yggcore_wireless_new.dir/utils/utils.c.s

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/utils/queue.c.o: Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/flags.make
Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/utils/queue.c.o: ../Yggdrasil/core/utils/queue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/utils/queue.c.o"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yggcore_wireless_new.dir/utils/queue.c.o   -c /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/utils/queue.c

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/utils/queue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yggcore_wireless_new.dir/utils/queue.c.i"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/utils/queue.c > CMakeFiles/yggcore_wireless_new.dir/utils/queue.c.i

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/utils/queue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yggcore_wireless_new.dir/utils/queue.c.s"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/utils/queue.c -o CMakeFiles/yggcore_wireless_new.dir/utils/queue.c.s

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/utils/queue_elem.c.o: Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/flags.make
Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/utils/queue_elem.c.o: ../Yggdrasil/core/utils/queue_elem.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/utils/queue_elem.c.o"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yggcore_wireless_new.dir/utils/queue_elem.c.o   -c /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/utils/queue_elem.c

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/utils/queue_elem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yggcore_wireless_new.dir/utils/queue_elem.c.i"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/utils/queue_elem.c > CMakeFiles/yggcore_wireless_new.dir/utils/queue_elem.c.i

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/utils/queue_elem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yggcore_wireless_new.dir/utils/queue_elem.c.s"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/utils/queue_elem.c -o CMakeFiles/yggcore_wireless_new.dir/utils/queue_elem.c.s

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/protos/timer.c.o: Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/flags.make
Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/protos/timer.c.o: ../Yggdrasil/core/protos/timer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/protos/timer.c.o"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yggcore_wireless_new.dir/protos/timer.c.o   -c /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/protos/timer.c

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/protos/timer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yggcore_wireless_new.dir/protos/timer.c.i"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/protos/timer.c > CMakeFiles/yggcore_wireless_new.dir/protos/timer.c.i

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/protos/timer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yggcore_wireless_new.dir/protos/timer.c.s"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/protos/timer.c -o CMakeFiles/yggcore_wireless_new.dir/protos/timer.c.s

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/protos/executor.c.o: Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/flags.make
Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/protos/executor.c.o: ../Yggdrasil/core/protos/executor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/protos/executor.c.o"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yggcore_wireless_new.dir/protos/executor.c.o   -c /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/protos/executor.c

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/protos/executor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yggcore_wireless_new.dir/protos/executor.c.i"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/protos/executor.c > CMakeFiles/yggcore_wireless_new.dir/protos/executor.c.i

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/protos/executor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yggcore_wireless_new.dir/protos/executor.c.s"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/protos/executor.c -o CMakeFiles/yggcore_wireless_new.dir/protos/executor.c.s

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/protos/wireless/dispatcher.c.o: Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/flags.make
Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/protos/wireless/dispatcher.c.o: ../Yggdrasil/core/protos/wireless/dispatcher.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/protos/wireless/dispatcher.c.o"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/yggcore_wireless_new.dir/protos/wireless/dispatcher.c.o   -c /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/protos/wireless/dispatcher.c

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/protos/wireless/dispatcher.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/yggcore_wireless_new.dir/protos/wireless/dispatcher.c.i"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/protos/wireless/dispatcher.c > CMakeFiles/yggcore_wireless_new.dir/protos/wireless/dispatcher.c.i

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/protos/wireless/dispatcher.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/yggcore_wireless_new.dir/protos/wireless/dispatcher.c.s"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core/protos/wireless/dispatcher.c -o CMakeFiles/yggcore_wireless_new.dir/protos/wireless/dispatcher.c.s

# Object files for target yggcore_wireless_new
yggcore_wireless_new_OBJECTS = \
"CMakeFiles/yggcore_wireless_new.dir/ygg_runtime.c.o" \
"CMakeFiles/yggcore_wireless_new.dir/proto_data_struct.c.o" \
"CMakeFiles/yggcore_wireless_new.dir/utils/utils.c.o" \
"CMakeFiles/yggcore_wireless_new.dir/utils/queue.c.o" \
"CMakeFiles/yggcore_wireless_new.dir/utils/queue_elem.c.o" \
"CMakeFiles/yggcore_wireless_new.dir/protos/timer.c.o" \
"CMakeFiles/yggcore_wireless_new.dir/protos/executor.c.o" \
"CMakeFiles/yggcore_wireless_new.dir/protos/wireless/dispatcher.c.o"

# External object files for target yggcore_wireless_new
yggcore_wireless_new_EXTERNAL_OBJECTS =

../lib/libyggcore_wireless_new.a: Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/ygg_runtime.c.o
../lib/libyggcore_wireless_new.a: Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/proto_data_struct.c.o
../lib/libyggcore_wireless_new.a: Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/utils/utils.c.o
../lib/libyggcore_wireless_new.a: Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/utils/queue.c.o
../lib/libyggcore_wireless_new.a: Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/utils/queue_elem.c.o
../lib/libyggcore_wireless_new.a: Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/protos/timer.c.o
../lib/libyggcore_wireless_new.a: Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/protos/executor.c.o
../lib/libyggcore_wireless_new.a: Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/protos/wireless/dispatcher.c.o
../lib/libyggcore_wireless_new.a: Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/build.make
../lib/libyggcore_wireless_new.a: Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking C static library ../../../lib/libyggcore_wireless_new.a"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && $(CMAKE_COMMAND) -P CMakeFiles/yggcore_wireless_new.dir/cmake_clean_target.cmake
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/yggcore_wireless_new.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/build: ../lib/libyggcore_wireless_new.a

.PHONY : Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/build

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/clean:
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core && $(CMAKE_COMMAND) -P CMakeFiles/yggcore_wireless_new.dir/cmake_clean.cmake
.PHONY : Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/clean

Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/depend:
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jpantao/Git/BScResearch/Yggdrasil /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/core /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Yggdrasil/core/CMakeFiles/yggcore_wireless_new.dir/depend

