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
include Yggdrasil/applications/tests/ip/CMakeFiles/test_xbot.dir/depend.make

# Include the progress variables for this target.
include Yggdrasil/applications/tests/ip/CMakeFiles/test_xbot.dir/progress.make

# Include the compile flags for this target's objects.
include Yggdrasil/applications/tests/ip/CMakeFiles/test_xbot.dir/flags.make

Yggdrasil/applications/tests/ip/CMakeFiles/test_xbot.dir/xbot_test.c.o: Yggdrasil/applications/tests/ip/CMakeFiles/test_xbot.dir/flags.make
Yggdrasil/applications/tests/ip/CMakeFiles/test_xbot.dir/xbot_test.c.o: ../Yggdrasil/applications/tests/ip/xbot_test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Yggdrasil/applications/tests/ip/CMakeFiles/test_xbot.dir/xbot_test.c.o"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/applications/tests/ip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_xbot.dir/xbot_test.c.o   -c /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/applications/tests/ip/xbot_test.c

Yggdrasil/applications/tests/ip/CMakeFiles/test_xbot.dir/xbot_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_xbot.dir/xbot_test.c.i"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/applications/tests/ip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/applications/tests/ip/xbot_test.c > CMakeFiles/test_xbot.dir/xbot_test.c.i

Yggdrasil/applications/tests/ip/CMakeFiles/test_xbot.dir/xbot_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_xbot.dir/xbot_test.c.s"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/applications/tests/ip && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/applications/tests/ip/xbot_test.c -o CMakeFiles/test_xbot.dir/xbot_test.c.s

# Object files for target test_xbot
test_xbot_OBJECTS = \
"CMakeFiles/test_xbot.dir/xbot_test.c.o"

# External object files for target test_xbot
test_xbot_EXTERNAL_OBJECTS =

../bin/test_xbot: Yggdrasil/applications/tests/ip/CMakeFiles/test_xbot.dir/xbot_test.c.o
../bin/test_xbot: Yggdrasil/applications/tests/ip/CMakeFiles/test_xbot.dir/build.make
../bin/test_xbot: ../lib/libyggcore_ip.a
../bin/test_xbot: ../lib/libyggcore_ip.a
../bin/test_xbot: ../lib/libygglib_ip.a
../bin/test_xbot: ../lib/libygglib_base.a
../bin/test_xbot: ../lib/libgen_data_structs.a
../bin/test_xbot: ../lib/libhashfunctions.a
../bin/test_xbot: Yggdrasil/applications/tests/ip/CMakeFiles/test_xbot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../../../../../bin/test_xbot"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/applications/tests/ip && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_xbot.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Yggdrasil/applications/tests/ip/CMakeFiles/test_xbot.dir/build: ../bin/test_xbot

.PHONY : Yggdrasil/applications/tests/ip/CMakeFiles/test_xbot.dir/build

Yggdrasil/applications/tests/ip/CMakeFiles/test_xbot.dir/clean:
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/applications/tests/ip && $(CMAKE_COMMAND) -P CMakeFiles/test_xbot.dir/cmake_clean.cmake
.PHONY : Yggdrasil/applications/tests/ip/CMakeFiles/test_xbot.dir/clean

Yggdrasil/applications/tests/ip/CMakeFiles/test_xbot.dir/depend:
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jpantao/Git/BScResearch/Yggdrasil /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/applications/tests/ip /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/applications/tests/ip /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/applications/tests/ip/CMakeFiles/test_xbot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Yggdrasil/applications/tests/ip/CMakeFiles/test_xbot.dir/depend

