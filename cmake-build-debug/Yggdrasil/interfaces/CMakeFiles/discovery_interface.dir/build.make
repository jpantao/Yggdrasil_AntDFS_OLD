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
include Yggdrasil/interfaces/CMakeFiles/discovery_interface.dir/depend.make

# Include the progress variables for this target.
include Yggdrasil/interfaces/CMakeFiles/discovery_interface.dir/progress.make

# Include the compile flags for this target's objects.
include Yggdrasil/interfaces/CMakeFiles/discovery_interface.dir/flags.make

Yggdrasil/interfaces/CMakeFiles/discovery_interface.dir/discovery/discovery_events.c.o: Yggdrasil/interfaces/CMakeFiles/discovery_interface.dir/flags.make
Yggdrasil/interfaces/CMakeFiles/discovery_interface.dir/discovery/discovery_events.c.o: ../Yggdrasil/interfaces/discovery/discovery_events.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Yggdrasil/interfaces/CMakeFiles/discovery_interface.dir/discovery/discovery_events.c.o"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/interfaces && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/discovery_interface.dir/discovery/discovery_events.c.o   -c /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/interfaces/discovery/discovery_events.c

Yggdrasil/interfaces/CMakeFiles/discovery_interface.dir/discovery/discovery_events.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/discovery_interface.dir/discovery/discovery_events.c.i"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/interfaces && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/interfaces/discovery/discovery_events.c > CMakeFiles/discovery_interface.dir/discovery/discovery_events.c.i

Yggdrasil/interfaces/CMakeFiles/discovery_interface.dir/discovery/discovery_events.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/discovery_interface.dir/discovery/discovery_events.c.s"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/interfaces && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/interfaces/discovery/discovery_events.c -o CMakeFiles/discovery_interface.dir/discovery/discovery_events.c.s

# Object files for target discovery_interface
discovery_interface_OBJECTS = \
"CMakeFiles/discovery_interface.dir/discovery/discovery_events.c.o"

# External object files for target discovery_interface
discovery_interface_EXTERNAL_OBJECTS =

../lib/libdiscovery_interface.a: Yggdrasil/interfaces/CMakeFiles/discovery_interface.dir/discovery/discovery_events.c.o
../lib/libdiscovery_interface.a: Yggdrasil/interfaces/CMakeFiles/discovery_interface.dir/build.make
../lib/libdiscovery_interface.a: Yggdrasil/interfaces/CMakeFiles/discovery_interface.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library ../../../lib/libdiscovery_interface.a"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/interfaces && $(CMAKE_COMMAND) -P CMakeFiles/discovery_interface.dir/cmake_clean_target.cmake
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/interfaces && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/discovery_interface.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Yggdrasil/interfaces/CMakeFiles/discovery_interface.dir/build: ../lib/libdiscovery_interface.a

.PHONY : Yggdrasil/interfaces/CMakeFiles/discovery_interface.dir/build

Yggdrasil/interfaces/CMakeFiles/discovery_interface.dir/clean:
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/interfaces && $(CMAKE_COMMAND) -P CMakeFiles/discovery_interface.dir/cmake_clean.cmake
.PHONY : Yggdrasil/interfaces/CMakeFiles/discovery_interface.dir/clean

Yggdrasil/interfaces/CMakeFiles/discovery_interface.dir/depend:
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jpantao/Git/BScResearch/Yggdrasil /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/interfaces /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/interfaces /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/interfaces/CMakeFiles/discovery_interface.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Yggdrasil/interfaces/CMakeFiles/discovery_interface.dir/depend
