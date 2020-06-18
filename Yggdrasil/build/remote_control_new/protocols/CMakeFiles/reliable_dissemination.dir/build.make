# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/build

# Include any dependencies generated for this target.
include remote_control_new/protocols/CMakeFiles/reliable_dissemination.dir/depend.make

# Include the progress variables for this target.
include remote_control_new/protocols/CMakeFiles/reliable_dissemination.dir/progress.make

# Include the compile flags for this target's objects.
include remote_control_new/protocols/CMakeFiles/reliable_dissemination.dir/flags.make

remote_control_new/protocols/CMakeFiles/reliable_dissemination.dir/reliable_dissemination.c.o: remote_control_new/protocols/CMakeFiles/reliable_dissemination.dir/flags.make
remote_control_new/protocols/CMakeFiles/reliable_dissemination.dir/reliable_dissemination.c.o: ../remote_control_new/protocols/reliable_dissemination.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object remote_control_new/protocols/CMakeFiles/reliable_dissemination.dir/reliable_dissemination.c.o"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/build/remote_control_new/protocols && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/reliable_dissemination.dir/reliable_dissemination.c.o   -c /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/remote_control_new/protocols/reliable_dissemination.c

remote_control_new/protocols/CMakeFiles/reliable_dissemination.dir/reliable_dissemination.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/reliable_dissemination.dir/reliable_dissemination.c.i"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/build/remote_control_new/protocols && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/remote_control_new/protocols/reliable_dissemination.c > CMakeFiles/reliable_dissemination.dir/reliable_dissemination.c.i

remote_control_new/protocols/CMakeFiles/reliable_dissemination.dir/reliable_dissemination.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/reliable_dissemination.dir/reliable_dissemination.c.s"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/build/remote_control_new/protocols && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/remote_control_new/protocols/reliable_dissemination.c -o CMakeFiles/reliable_dissemination.dir/reliable_dissemination.c.s

# Object files for target reliable_dissemination
reliable_dissemination_OBJECTS = \
"CMakeFiles/reliable_dissemination.dir/reliable_dissemination.c.o"

# External object files for target reliable_dissemination
reliable_dissemination_EXTERNAL_OBJECTS =

remote_control_new/protocols/libreliable_dissemination.a: remote_control_new/protocols/CMakeFiles/reliable_dissemination.dir/reliable_dissemination.c.o
remote_control_new/protocols/libreliable_dissemination.a: remote_control_new/protocols/CMakeFiles/reliable_dissemination.dir/build.make
remote_control_new/protocols/libreliable_dissemination.a: remote_control_new/protocols/CMakeFiles/reliable_dissemination.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libreliable_dissemination.a"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/build/remote_control_new/protocols && $(CMAKE_COMMAND) -P CMakeFiles/reliable_dissemination.dir/cmake_clean_target.cmake
	cd /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/build/remote_control_new/protocols && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/reliable_dissemination.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
remote_control_new/protocols/CMakeFiles/reliable_dissemination.dir/build: remote_control_new/protocols/libreliable_dissemination.a

.PHONY : remote_control_new/protocols/CMakeFiles/reliable_dissemination.dir/build

remote_control_new/protocols/CMakeFiles/reliable_dissemination.dir/clean:
	cd /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/build/remote_control_new/protocols && $(CMAKE_COMMAND) -P CMakeFiles/reliable_dissemination.dir/cmake_clean.cmake
.PHONY : remote_control_new/protocols/CMakeFiles/reliable_dissemination.dir/clean

remote_control_new/protocols/CMakeFiles/reliable_dissemination.dir/depend:
	cd /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/remote_control_new/protocols /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/build /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/build/remote_control_new/protocols /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/build/remote_control_new/protocols/CMakeFiles/reliable_dissemination.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : remote_control_new/protocols/CMakeFiles/reliable_dissemination.dir/depend
