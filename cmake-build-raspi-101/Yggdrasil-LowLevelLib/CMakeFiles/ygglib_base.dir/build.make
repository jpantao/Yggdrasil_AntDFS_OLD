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
include Yggdrasil-LowLevelLib/CMakeFiles/ygglib_base.dir/depend.make

# Include the progress variables for this target.
include Yggdrasil-LowLevelLib/CMakeFiles/ygglib_base.dir/progress.make

# Include the compile flags for this target's objects.
include Yggdrasil-LowLevelLib/CMakeFiles/ygglib_base.dir/flags.make

Yggdrasil-LowLevelLib/CMakeFiles/ygglib_base.dir/src/data_struct.c.o: Yggdrasil-LowLevelLib/CMakeFiles/ygglib_base.dir/flags.make
Yggdrasil-LowLevelLib/CMakeFiles/ygglib_base.dir/src/data_struct.c.o: ../Yggdrasil-LowLevelLib/src/data_struct.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Yggdrasil-LowLevelLib/CMakeFiles/ygglib_base.dir/src/data_struct.c.o"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil-LowLevelLib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ygglib_base.dir/src/data_struct.c.o   -c /tmp/tmp.4yRsQEGfYg/Yggdrasil-LowLevelLib/src/data_struct.c

Yggdrasil-LowLevelLib/CMakeFiles/ygglib_base.dir/src/data_struct.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ygglib_base.dir/src/data_struct.c.i"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil-LowLevelLib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.4yRsQEGfYg/Yggdrasil-LowLevelLib/src/data_struct.c > CMakeFiles/ygglib_base.dir/src/data_struct.c.i

Yggdrasil-LowLevelLib/CMakeFiles/ygglib_base.dir/src/data_struct.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ygglib_base.dir/src/data_struct.c.s"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil-LowLevelLib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.4yRsQEGfYg/Yggdrasil-LowLevelLib/src/data_struct.c -o CMakeFiles/ygglib_base.dir/src/data_struct.c.s

# Object files for target ygglib_base
ygglib_base_OBJECTS = \
"CMakeFiles/ygglib_base.dir/src/data_struct.c.o"

# External object files for target ygglib_base
ygglib_base_EXTERNAL_OBJECTS =

../lib/libygglib_base.a: Yggdrasil-LowLevelLib/CMakeFiles/ygglib_base.dir/src/data_struct.c.o
../lib/libygglib_base.a: Yggdrasil-LowLevelLib/CMakeFiles/ygglib_base.dir/build.make
../lib/libygglib_base.a: Yggdrasil-LowLevelLib/CMakeFiles/ygglib_base.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library ../../lib/libygglib_base.a"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil-LowLevelLib && $(CMAKE_COMMAND) -P CMakeFiles/ygglib_base.dir/cmake_clean_target.cmake
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil-LowLevelLib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ygglib_base.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Yggdrasil-LowLevelLib/CMakeFiles/ygglib_base.dir/build: ../lib/libygglib_base.a

.PHONY : Yggdrasil-LowLevelLib/CMakeFiles/ygglib_base.dir/build

Yggdrasil-LowLevelLib/CMakeFiles/ygglib_base.dir/clean:
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil-LowLevelLib && $(CMAKE_COMMAND) -P CMakeFiles/ygglib_base.dir/cmake_clean.cmake
.PHONY : Yggdrasil-LowLevelLib/CMakeFiles/ygglib_base.dir/clean

Yggdrasil-LowLevelLib/CMakeFiles/ygglib_base.dir/depend:
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.4yRsQEGfYg /tmp/tmp.4yRsQEGfYg/Yggdrasil-LowLevelLib /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101 /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil-LowLevelLib /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil-LowLevelLib/CMakeFiles/ygglib_base.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Yggdrasil-LowLevelLib/CMakeFiles/ygglib_base.dir/depend

