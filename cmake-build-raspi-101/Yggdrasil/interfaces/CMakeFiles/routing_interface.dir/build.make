# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /tmp/tmp.4yRsQEGfYg

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101

# Include any dependencies generated for this target.
include Yggdrasil/interfaces/CMakeFiles/routing_interface.dir/depend.make

# Include the progress variables for this target.
include Yggdrasil/interfaces/CMakeFiles/routing_interface.dir/progress.make

# Include the compile flags for this target's objects.
include Yggdrasil/interfaces/CMakeFiles/routing_interface.dir/flags.make

Yggdrasil/interfaces/CMakeFiles/routing_interface.dir/routing/routing_interface.c.o: Yggdrasil/interfaces/CMakeFiles/routing_interface.dir/flags.make
Yggdrasil/interfaces/CMakeFiles/routing_interface.dir/routing/routing_interface.c.o: ../Yggdrasil/interfaces/routing/routing_interface.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Yggdrasil/interfaces/CMakeFiles/routing_interface.dir/routing/routing_interface.c.o"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/interfaces && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/routing_interface.dir/routing/routing_interface.c.o   -c /tmp/tmp.4yRsQEGfYg/Yggdrasil/interfaces/routing/routing_interface.c

Yggdrasil/interfaces/CMakeFiles/routing_interface.dir/routing/routing_interface.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/routing_interface.dir/routing/routing_interface.c.i"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/interfaces && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.4yRsQEGfYg/Yggdrasil/interfaces/routing/routing_interface.c > CMakeFiles/routing_interface.dir/routing/routing_interface.c.i

Yggdrasil/interfaces/CMakeFiles/routing_interface.dir/routing/routing_interface.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/routing_interface.dir/routing/routing_interface.c.s"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/interfaces && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.4yRsQEGfYg/Yggdrasil/interfaces/routing/routing_interface.c -o CMakeFiles/routing_interface.dir/routing/routing_interface.c.s

# Object files for target routing_interface
routing_interface_OBJECTS = \
"CMakeFiles/routing_interface.dir/routing/routing_interface.c.o"

# External object files for target routing_interface
routing_interface_EXTERNAL_OBJECTS =

../lib/librouting_interface.a: Yggdrasil/interfaces/CMakeFiles/routing_interface.dir/routing/routing_interface.c.o
../lib/librouting_interface.a: Yggdrasil/interfaces/CMakeFiles/routing_interface.dir/build.make
../lib/librouting_interface.a: Yggdrasil/interfaces/CMakeFiles/routing_interface.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library ../../../lib/librouting_interface.a"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/interfaces && $(CMAKE_COMMAND) -P CMakeFiles/routing_interface.dir/cmake_clean_target.cmake
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/interfaces && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/routing_interface.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Yggdrasil/interfaces/CMakeFiles/routing_interface.dir/build: ../lib/librouting_interface.a

.PHONY : Yggdrasil/interfaces/CMakeFiles/routing_interface.dir/build

Yggdrasil/interfaces/CMakeFiles/routing_interface.dir/clean:
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/interfaces && $(CMAKE_COMMAND) -P CMakeFiles/routing_interface.dir/cmake_clean.cmake
.PHONY : Yggdrasil/interfaces/CMakeFiles/routing_interface.dir/clean

Yggdrasil/interfaces/CMakeFiles/routing_interface.dir/depend:
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.4yRsQEGfYg /tmp/tmp.4yRsQEGfYg/Yggdrasil/interfaces /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101 /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/interfaces /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/interfaces/CMakeFiles/routing_interface.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Yggdrasil/interfaces/CMakeFiles/routing_interface.dir/depend

