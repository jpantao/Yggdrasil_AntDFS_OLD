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
include Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/depend.make

# Include the progress variables for this target.
include Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/progress.make

# Include the compile flags for this target's objects.
include Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/flags.make

Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/aggregation/aggregation_functions.c.o: Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/flags.make
Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/aggregation/aggregation_functions.c.o: ../Yggdrasil/interfaces/aggregation/aggregation_functions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/aggregation/aggregation_functions.c.o"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/interfaces && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/aggregation_interface.dir/aggregation/aggregation_functions.c.o   -c /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/interfaces/aggregation/aggregation_functions.c

Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/aggregation/aggregation_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aggregation_interface.dir/aggregation/aggregation_functions.c.i"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/interfaces && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/interfaces/aggregation/aggregation_functions.c > CMakeFiles/aggregation_interface.dir/aggregation/aggregation_functions.c.i

Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/aggregation/aggregation_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aggregation_interface.dir/aggregation/aggregation_functions.c.s"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/interfaces && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/interfaces/aggregation/aggregation_functions.c -o CMakeFiles/aggregation_interface.dir/aggregation/aggregation_functions.c.s

Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/aggregation/aggregation_operations.c.o: Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/flags.make
Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/aggregation/aggregation_operations.c.o: ../Yggdrasil/interfaces/aggregation/aggregation_operations.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/aggregation/aggregation_operations.c.o"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/interfaces && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/aggregation_interface.dir/aggregation/aggregation_operations.c.o   -c /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/interfaces/aggregation/aggregation_operations.c

Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/aggregation/aggregation_operations.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aggregation_interface.dir/aggregation/aggregation_operations.c.i"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/interfaces && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/interfaces/aggregation/aggregation_operations.c > CMakeFiles/aggregation_interface.dir/aggregation/aggregation_operations.c.i

Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/aggregation/aggregation_operations.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aggregation_interface.dir/aggregation/aggregation_operations.c.s"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/interfaces && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/interfaces/aggregation/aggregation_operations.c -o CMakeFiles/aggregation_interface.dir/aggregation/aggregation_operations.c.s

# Object files for target aggregation_interface
aggregation_interface_OBJECTS = \
"CMakeFiles/aggregation_interface.dir/aggregation/aggregation_functions.c.o" \
"CMakeFiles/aggregation_interface.dir/aggregation/aggregation_operations.c.o"

# External object files for target aggregation_interface
aggregation_interface_EXTERNAL_OBJECTS =

../lib/libaggregation_interface.a: Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/aggregation/aggregation_functions.c.o
../lib/libaggregation_interface.a: Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/aggregation/aggregation_operations.c.o
../lib/libaggregation_interface.a: Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/build.make
../lib/libaggregation_interface.a: Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library ../../../lib/libaggregation_interface.a"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/interfaces && $(CMAKE_COMMAND) -P CMakeFiles/aggregation_interface.dir/cmake_clean_target.cmake
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/interfaces && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aggregation_interface.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/build: ../lib/libaggregation_interface.a

.PHONY : Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/build

Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/clean:
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/interfaces && $(CMAKE_COMMAND) -P CMakeFiles/aggregation_interface.dir/cmake_clean.cmake
.PHONY : Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/clean

Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/depend:
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jpantao/Git/BScResearch/Yggdrasil /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/interfaces /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/interfaces /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Yggdrasil/interfaces/CMakeFiles/aggregation_interface.dir/depend

