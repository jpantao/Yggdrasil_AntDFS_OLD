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
include Yggdrasil/protocols/wireless/CMakeFiles/limosense.dir/depend.make

# Include the progress variables for this target.
include Yggdrasil/protocols/wireless/CMakeFiles/limosense.dir/progress.make

# Include the compile flags for this target's objects.
include Yggdrasil/protocols/wireless/CMakeFiles/limosense.dir/flags.make

Yggdrasil/protocols/wireless/CMakeFiles/limosense.dir/aggregation/LiMoSense.c.o: Yggdrasil/protocols/wireless/CMakeFiles/limosense.dir/flags.make
Yggdrasil/protocols/wireless/CMakeFiles/limosense.dir/aggregation/LiMoSense.c.o: ../Yggdrasil/protocols/wireless/aggregation/LiMoSense.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Yggdrasil/protocols/wireless/CMakeFiles/limosense.dir/aggregation/LiMoSense.c.o"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/protocols/wireless && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/limosense.dir/aggregation/LiMoSense.c.o   -c /tmp/tmp.4yRsQEGfYg/Yggdrasil/protocols/wireless/aggregation/LiMoSense.c

Yggdrasil/protocols/wireless/CMakeFiles/limosense.dir/aggregation/LiMoSense.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/limosense.dir/aggregation/LiMoSense.c.i"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/protocols/wireless && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.4yRsQEGfYg/Yggdrasil/protocols/wireless/aggregation/LiMoSense.c > CMakeFiles/limosense.dir/aggregation/LiMoSense.c.i

Yggdrasil/protocols/wireless/CMakeFiles/limosense.dir/aggregation/LiMoSense.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/limosense.dir/aggregation/LiMoSense.c.s"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/protocols/wireless && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.4yRsQEGfYg/Yggdrasil/protocols/wireless/aggregation/LiMoSense.c -o CMakeFiles/limosense.dir/aggregation/LiMoSense.c.s

# Object files for target limosense
limosense_OBJECTS = \
"CMakeFiles/limosense.dir/aggregation/LiMoSense.c.o"

# External object files for target limosense
limosense_EXTERNAL_OBJECTS =

../lib/liblimosense.a: Yggdrasil/protocols/wireless/CMakeFiles/limosense.dir/aggregation/LiMoSense.c.o
../lib/liblimosense.a: Yggdrasil/protocols/wireless/CMakeFiles/limosense.dir/build.make
../lib/liblimosense.a: Yggdrasil/protocols/wireless/CMakeFiles/limosense.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library ../../../../lib/liblimosense.a"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/protocols/wireless && $(CMAKE_COMMAND) -P CMakeFiles/limosense.dir/cmake_clean_target.cmake
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/protocols/wireless && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/limosense.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Yggdrasil/protocols/wireless/CMakeFiles/limosense.dir/build: ../lib/liblimosense.a

.PHONY : Yggdrasil/protocols/wireless/CMakeFiles/limosense.dir/build

Yggdrasil/protocols/wireless/CMakeFiles/limosense.dir/clean:
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/protocols/wireless && $(CMAKE_COMMAND) -P CMakeFiles/limosense.dir/cmake_clean.cmake
.PHONY : Yggdrasil/protocols/wireless/CMakeFiles/limosense.dir/clean

Yggdrasil/protocols/wireless/CMakeFiles/limosense.dir/depend:
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.4yRsQEGfYg /tmp/tmp.4yRsQEGfYg/Yggdrasil/protocols/wireless /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101 /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/protocols/wireless /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/protocols/wireless/CMakeFiles/limosense.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Yggdrasil/protocols/wireless/CMakeFiles/limosense.dir/depend

