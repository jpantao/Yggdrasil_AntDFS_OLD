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
include Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/depend.make

# Include the progress variables for this target.
include Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/progress.make

# Include the compile flags for this target's objects.
include Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/flags.make

Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/ControlStructure.c.o: Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/flags.make
Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/ControlStructure.c.o: ../Yggdrasil/remote_control_new/applications/ControlStructure.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/ControlStructure.c.o"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/remote_control_new/applications && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/YggdrasilControlProcess.dir/ControlStructure.c.o   -c /tmp/tmp.4yRsQEGfYg/Yggdrasil/remote_control_new/applications/ControlStructure.c

Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/ControlStructure.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/YggdrasilControlProcess.dir/ControlStructure.c.i"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/remote_control_new/applications && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.4yRsQEGfYg/Yggdrasil/remote_control_new/applications/ControlStructure.c > CMakeFiles/YggdrasilControlProcess.dir/ControlStructure.c.i

Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/ControlStructure.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/YggdrasilControlProcess.dir/ControlStructure.c.s"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/remote_control_new/applications && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.4yRsQEGfYg/Yggdrasil/remote_control_new/applications/ControlStructure.c -o CMakeFiles/YggdrasilControlProcess.dir/ControlStructure.c.s

Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/cmd_server.c.o: Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/flags.make
Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/cmd_server.c.o: ../Yggdrasil/remote_control_new/applications/cmd_server.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/cmd_server.c.o"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/remote_control_new/applications && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/YggdrasilControlProcess.dir/cmd_server.c.o   -c /tmp/tmp.4yRsQEGfYg/Yggdrasil/remote_control_new/applications/cmd_server.c

Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/cmd_server.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/YggdrasilControlProcess.dir/cmd_server.c.i"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/remote_control_new/applications && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.4yRsQEGfYg/Yggdrasil/remote_control_new/applications/cmd_server.c > CMakeFiles/YggdrasilControlProcess.dir/cmd_server.c.i

Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/cmd_server.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/YggdrasilControlProcess.dir/cmd_server.c.s"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/remote_control_new/applications && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.4yRsQEGfYg/Yggdrasil/remote_control_new/applications/cmd_server.c -o CMakeFiles/YggdrasilControlProcess.dir/cmd_server.c.s

# Object files for target YggdrasilControlProcess
YggdrasilControlProcess_OBJECTS = \
"CMakeFiles/YggdrasilControlProcess.dir/ControlStructure.c.o" \
"CMakeFiles/YggdrasilControlProcess.dir/cmd_server.c.o"

# External object files for target YggdrasilControlProcess
YggdrasilControlProcess_EXTERNAL_OBJECTS =

../bin/YggdrasilControlProcess: Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/ControlStructure.c.o
../bin/YggdrasilControlProcess: Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/cmd_server.c.o
../bin/YggdrasilControlProcess: Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/build.make
../bin/YggdrasilControlProcess: ../lib/libyggcore_wireless_new.a
../bin/YggdrasilControlProcess: ../lib/libcmdio_new.a
../bin/YggdrasilControlProcess: ../lib/libcommands_new.a
../bin/YggdrasilControlProcess: ../lib/libreliable_dissemination.a
../bin/YggdrasilControlProcess: ../lib/libtopology_manager.a
../bin/YggdrasilControlProcess: ../lib/libaggregation_interface.a
../bin/YggdrasilControlProcess: ../lib/libdiscovery.a
../bin/YggdrasilControlProcess: ../lib/libdiscovery_interface.a
../bin/YggdrasilControlProcess: ../lib/libyggcore_wireless_new.a
../bin/YggdrasilControlProcess: ../lib/libygglib_wireless_new.a
../bin/YggdrasilControlProcess: ../lib/libygglib_base.a
../bin/YggdrasilControlProcess: ../lib/libgen_data_structs.a
../bin/YggdrasilControlProcess: ../lib/libhashfunctions.a
../bin/YggdrasilControlProcess: Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable ../../../../bin/YggdrasilControlProcess"
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/remote_control_new/applications && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/YggdrasilControlProcess.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/build: ../bin/YggdrasilControlProcess

.PHONY : Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/build

Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/clean:
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/remote_control_new/applications && $(CMAKE_COMMAND) -P CMakeFiles/YggdrasilControlProcess.dir/cmake_clean.cmake
.PHONY : Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/clean

Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/depend:
	cd /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.4yRsQEGfYg /tmp/tmp.4yRsQEGfYg/Yggdrasil/remote_control_new/applications /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101 /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/remote_control_new/applications /tmp/tmp.4yRsQEGfYg/cmake-build-raspi-101/Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Yggdrasil/remote_control_new/applications/CMakeFiles/YggdrasilControlProcess.dir/depend

