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


# Produce verbose output by default.
VERBOSE = 1

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
include Yggdrasil/applications/tests/wireless/CMakeFiles/test_dynamic_protos.dir/depend.make

# Include the progress variables for this target.
include Yggdrasil/applications/tests/wireless/CMakeFiles/test_dynamic_protos.dir/progress.make

# Include the compile flags for this target's objects.
include Yggdrasil/applications/tests/wireless/CMakeFiles/test_dynamic_protos.dir/flags.make

Yggdrasil/applications/tests/wireless/CMakeFiles/test_dynamic_protos.dir/dynamic_protocols_test.c.o: Yggdrasil/applications/tests/wireless/CMakeFiles/test_dynamic_protos.dir/flags.make
Yggdrasil/applications/tests/wireless/CMakeFiles/test_dynamic_protos.dir/dynamic_protocols_test.c.o: ../Yggdrasil/applications/tests/wireless/dynamic_protocols_test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Yggdrasil/applications/tests/wireless/CMakeFiles/test_dynamic_protos.dir/dynamic_protocols_test.c.o"
	cd /tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101/Yggdrasil/applications/tests/wireless && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_dynamic_protos.dir/dynamic_protocols_test.c.o   -c /tmp/tmp.uw2GsBf4tT/Yggdrasil/applications/tests/wireless/dynamic_protocols_test.c

Yggdrasil/applications/tests/wireless/CMakeFiles/test_dynamic_protos.dir/dynamic_protocols_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_dynamic_protos.dir/dynamic_protocols_test.c.i"
	cd /tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101/Yggdrasil/applications/tests/wireless && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.uw2GsBf4tT/Yggdrasil/applications/tests/wireless/dynamic_protocols_test.c > CMakeFiles/test_dynamic_protos.dir/dynamic_protocols_test.c.i

Yggdrasil/applications/tests/wireless/CMakeFiles/test_dynamic_protos.dir/dynamic_protocols_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_dynamic_protos.dir/dynamic_protocols_test.c.s"
	cd /tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101/Yggdrasil/applications/tests/wireless && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.uw2GsBf4tT/Yggdrasil/applications/tests/wireless/dynamic_protocols_test.c -o CMakeFiles/test_dynamic_protos.dir/dynamic_protocols_test.c.s

# Object files for target test_dynamic_protos
test_dynamic_protos_OBJECTS = \
"CMakeFiles/test_dynamic_protos.dir/dynamic_protocols_test.c.o"

# External object files for target test_dynamic_protos
test_dynamic_protos_EXTERNAL_OBJECTS =

../bin/test_dynamic_protos: Yggdrasil/applications/tests/wireless/CMakeFiles/test_dynamic_protos.dir/dynamic_protocols_test.c.o
../bin/test_dynamic_protos: Yggdrasil/applications/tests/wireless/CMakeFiles/test_dynamic_protos.dir/build.make
../bin/test_dynamic_protos: ../lib/libyggcore_wireless.a
../bin/test_dynamic_protos: ../lib/libfault_detection_discovery.a
../bin/test_dynamic_protos: ../lib/libflow_updating.a
../bin/test_dynamic_protos: ../lib/libmirage.a
../bin/test_dynamic_protos: ../lib/libygglib_wireless.a
../bin/test_dynamic_protos: ../lib/libdiscovery_interface.a
../bin/test_dynamic_protos: ../lib/libneighbour_list.a
../bin/test_dynamic_protos: ../lib/libaggregation_interface.a
../bin/test_dynamic_protos: ../lib/libyggcore_wireless_new.a
../bin/test_dynamic_protos: ../lib/libgen_data_structs.a
../bin/test_dynamic_protos: ../lib/libygglib_wireless_new.a
../bin/test_dynamic_protos: ../lib/libygglib_base.a
../bin/test_dynamic_protos: Yggdrasil/applications/tests/wireless/CMakeFiles/test_dynamic_protos.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../../../../../bin/test_dynamic_protos"
	cd /tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101/Yggdrasil/applications/tests/wireless && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_dynamic_protos.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Yggdrasil/applications/tests/wireless/CMakeFiles/test_dynamic_protos.dir/build: ../bin/test_dynamic_protos

.PHONY : Yggdrasil/applications/tests/wireless/CMakeFiles/test_dynamic_protos.dir/build

Yggdrasil/applications/tests/wireless/CMakeFiles/test_dynamic_protos.dir/clean:
	cd /tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101/Yggdrasil/applications/tests/wireless && $(CMAKE_COMMAND) -P CMakeFiles/test_dynamic_protos.dir/cmake_clean.cmake
.PHONY : Yggdrasil/applications/tests/wireless/CMakeFiles/test_dynamic_protos.dir/clean

Yggdrasil/applications/tests/wireless/CMakeFiles/test_dynamic_protos.dir/depend:
	cd /tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.uw2GsBf4tT /tmp/tmp.uw2GsBf4tT/Yggdrasil/applications/tests/wireless /tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101 /tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101/Yggdrasil/applications/tests/wireless /tmp/tmp.uw2GsBf4tT/cmake-build-raspi-101/Yggdrasil/applications/tests/wireless/CMakeFiles/test_dynamic_protos.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Yggdrasil/applications/tests/wireless/CMakeFiles/test_dynamic_protos.dir/depend
