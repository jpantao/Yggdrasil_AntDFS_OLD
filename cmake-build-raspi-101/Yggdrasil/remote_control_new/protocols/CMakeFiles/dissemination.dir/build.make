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
include Yggdrasil/remote_control_new/protocols/CMakeFiles/dissemination.dir/depend.make

# Include the progress variables for this target.
include Yggdrasil/remote_control_new/protocols/CMakeFiles/dissemination.dir/progress.make

# Include the compile flags for this target's objects.
include Yggdrasil/remote_control_new/protocols/CMakeFiles/dissemination.dir/flags.make

Yggdrasil/remote_control_new/protocols/CMakeFiles/dissemination.dir/dissemination.c.o: Yggdrasil/remote_control_new/protocols/CMakeFiles/dissemination.dir/flags.make
Yggdrasil/remote_control_new/protocols/CMakeFiles/dissemination.dir/dissemination.c.o: ../Yggdrasil/remote_control_new/protocols/dissemination.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Yggdrasil/remote_control_new/protocols/CMakeFiles/dissemination.dir/dissemination.c.o"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/remote_control_new/protocols && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dissemination.dir/dissemination.c.o   -c /tmp/tmp.4yRsQEGfYg/Yggdrasil/remote_control_new/protocols/dissemination.c

Yggdrasil/remote_control_new/protocols/CMakeFiles/dissemination.dir/dissemination.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dissemination.dir/dissemination.c.i"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/remote_control_new/protocols && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.4yRsQEGfYg/Yggdrasil/remote_control_new/protocols/dissemination.c > CMakeFiles/dissemination.dir/dissemination.c.i

Yggdrasil/remote_control_new/protocols/CMakeFiles/dissemination.dir/dissemination.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dissemination.dir/dissemination.c.s"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/remote_control_new/protocols && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.4yRsQEGfYg/Yggdrasil/remote_control_new/protocols/dissemination.c -o CMakeFiles/dissemination.dir/dissemination.c.s

# Object files for target dissemination
dissemination_OBJECTS = \
"CMakeFiles/dissemination.dir/dissemination.c.o"

# External object files for target dissemination
dissemination_EXTERNAL_OBJECTS =

../lib/libdissemination.a: Yggdrasil/remote_control_new/protocols/CMakeFiles/dissemination.dir/dissemination.c.o
../lib/libdissemination.a: Yggdrasil/remote_control_new/protocols/CMakeFiles/dissemination.dir/build.make
../lib/libdissemination.a: Yggdrasil/remote_control_new/protocols/CMakeFiles/dissemination.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library ../../../../lib/libdissemination.a"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/remote_control_new/protocols && $(CMAKE_COMMAND) -P CMakeFiles/dissemination.dir/cmake_clean_target.cmake
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/remote_control_new/protocols && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dissemination.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Yggdrasil/remote_control_new/protocols/CMakeFiles/dissemination.dir/build: ../lib/libdissemination.a

.PHONY : Yggdrasil/remote_control_new/protocols/CMakeFiles/dissemination.dir/build

Yggdrasil/remote_control_new/protocols/CMakeFiles/dissemination.dir/clean:
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/remote_control_new/protocols && $(CMAKE_COMMAND) -P CMakeFiles/dissemination.dir/cmake_clean.cmake
.PHONY : Yggdrasil/remote_control_new/protocols/CMakeFiles/dissemination.dir/clean

Yggdrasil/remote_control_new/protocols/CMakeFiles/dissemination.dir/depend:
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.4yRsQEGfYg /tmp/tmp.4yRsQEGfYg/Yggdrasil/remote_control_new/protocols /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101 /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/remote_control_new/protocols /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/remote_control_new/protocols/CMakeFiles/dissemination.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Yggdrasil/remote_control_new/protocols/CMakeFiles/dissemination.dir/depend

