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
CMAKE_SOURCE_DIR = /tmp/tmp.uw2GsBf4tT

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101

# Include any dependencies generated for this target.
include Yggdrasil/remote_control_new/applications/CMakeFiles/control_app_cmp.dir/depend.make

# Include the progress variables for this target.
include Yggdrasil/remote_control_new/applications/CMakeFiles/control_app_cmp.dir/progress.make

# Include the compile flags for this target's objects.
include Yggdrasil/remote_control_new/applications/CMakeFiles/control_app_cmp.dir/flags.make

Yggdrasil/remote_control_new/applications/CMakeFiles/control_app_cmp.dir/control_app_cmp.c.o: Yggdrasil/remote_control_new/applications/CMakeFiles/control_app_cmp.dir/flags.make
Yggdrasil/remote_control_new/applications/CMakeFiles/control_app_cmp.dir/control_app_cmp.c.o: ../Yggdrasil/remote_control_new/applications/control_app_cmp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Yggdrasil/remote_control_new/applications/CMakeFiles/control_app_cmp.dir/control_app_cmp.c.o"
	cd /tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101/Yggdrasil/remote_control_new/applications && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/control_app_cmp.dir/control_app_cmp.c.o   -c /tmp/tmp.uw2GsBf4tT/Yggdrasil/remote_control_new/applications/control_app_cmp.c

Yggdrasil/remote_control_new/applications/CMakeFiles/control_app_cmp.dir/control_app_cmp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/control_app_cmp.dir/control_app_cmp.c.i"
	cd /tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101/Yggdrasil/remote_control_new/applications && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.uw2GsBf4tT/Yggdrasil/remote_control_new/applications/control_app_cmp.c > CMakeFiles/control_app_cmp.dir/control_app_cmp.c.i

Yggdrasil/remote_control_new/applications/CMakeFiles/control_app_cmp.dir/control_app_cmp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/control_app_cmp.dir/control_app_cmp.c.s"
	cd /tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101/Yggdrasil/remote_control_new/applications && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.uw2GsBf4tT/Yggdrasil/remote_control_new/applications/control_app_cmp.c -o CMakeFiles/control_app_cmp.dir/control_app_cmp.c.s

# Object files for target control_app_cmp
control_app_cmp_OBJECTS = \
"CMakeFiles/control_app_cmp.dir/control_app_cmp.c.o"

# External object files for target control_app_cmp
control_app_cmp_EXTERNAL_OBJECTS =

../lib/libcontrol_app_cmp.a: Yggdrasil/remote_control_new/applications/CMakeFiles/control_app_cmp.dir/control_app_cmp.c.o
../lib/libcontrol_app_cmp.a: Yggdrasil/remote_control_new/applications/CMakeFiles/control_app_cmp.dir/build.make
../lib/libcontrol_app_cmp.a: Yggdrasil/remote_control_new/applications/CMakeFiles/control_app_cmp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library ../../../../lib/libcontrol_app_cmp.a"
	cd /tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101/Yggdrasil/remote_control_new/applications && $(CMAKE_COMMAND) -P CMakeFiles/control_app_cmp.dir/cmake_clean_target.cmake
	cd /tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101/Yggdrasil/remote_control_new/applications && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/control_app_cmp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Yggdrasil/remote_control_new/applications/CMakeFiles/control_app_cmp.dir/build: ../lib/libcontrol_app_cmp.a

.PHONY : Yggdrasil/remote_control_new/applications/CMakeFiles/control_app_cmp.dir/build

Yggdrasil/remote_control_new/applications/CMakeFiles/control_app_cmp.dir/clean:
	cd /tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101/Yggdrasil/remote_control_new/applications && $(CMAKE_COMMAND) -P CMakeFiles/control_app_cmp.dir/cmake_clean.cmake
.PHONY : Yggdrasil/remote_control_new/applications/CMakeFiles/control_app_cmp.dir/clean

Yggdrasil/remote_control_new/applications/CMakeFiles/control_app_cmp.dir/depend:
	cd /tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.uw2GsBf4tT /tmp/tmp.uw2GsBf4tT/Yggdrasil/remote_control_new/applications /tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101 /tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101/Yggdrasil/remote_control_new/applications /tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101/Yggdrasil/remote_control_new/applications/CMakeFiles/control_app_cmp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Yggdrasil/remote_control_new/applications/CMakeFiles/control_app_cmp.dir/depend
