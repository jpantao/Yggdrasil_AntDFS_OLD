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
include Yggdrasil/utils/CMakeFiles/bloomfilters.dir/depend.make

# Include the progress variables for this target.
include Yggdrasil/utils/CMakeFiles/bloomfilters.dir/progress.make

# Include the compile flags for this target's objects.
include Yggdrasil/utils/CMakeFiles/bloomfilters.dir/flags.make

Yggdrasil/utils/CMakeFiles/bloomfilters.dir/bloomfilter/bloom.c.o: Yggdrasil/utils/CMakeFiles/bloomfilters.dir/flags.make
Yggdrasil/utils/CMakeFiles/bloomfilters.dir/bloomfilter/bloom.c.o: ../Yggdrasil/utils/bloomfilter/bloom.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Yggdrasil/utils/CMakeFiles/bloomfilters.dir/bloomfilter/bloom.c.o"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/utils && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/bloomfilters.dir/bloomfilter/bloom.c.o   -c /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/utils/bloomfilter/bloom.c

Yggdrasil/utils/CMakeFiles/bloomfilters.dir/bloomfilter/bloom.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bloomfilters.dir/bloomfilter/bloom.c.i"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/utils && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/utils/bloomfilter/bloom.c > CMakeFiles/bloomfilters.dir/bloomfilter/bloom.c.i

Yggdrasil/utils/CMakeFiles/bloomfilters.dir/bloomfilter/bloom.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bloomfilters.dir/bloomfilter/bloom.c.s"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/utils && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/utils/bloomfilter/bloom.c -o CMakeFiles/bloomfilters.dir/bloomfilter/bloom.c.s

# Object files for target bloomfilters
bloomfilters_OBJECTS = \
"CMakeFiles/bloomfilters.dir/bloomfilter/bloom.c.o"

# External object files for target bloomfilters
bloomfilters_EXTERNAL_OBJECTS =

../lib/libbloomfilters.a: Yggdrasil/utils/CMakeFiles/bloomfilters.dir/bloomfilter/bloom.c.o
../lib/libbloomfilters.a: Yggdrasil/utils/CMakeFiles/bloomfilters.dir/build.make
../lib/libbloomfilters.a: Yggdrasil/utils/CMakeFiles/bloomfilters.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library ../../../lib/libbloomfilters.a"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/utils && $(CMAKE_COMMAND) -P CMakeFiles/bloomfilters.dir/cmake_clean_target.cmake
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/utils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bloomfilters.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Yggdrasil/utils/CMakeFiles/bloomfilters.dir/build: ../lib/libbloomfilters.a

.PHONY : Yggdrasil/utils/CMakeFiles/bloomfilters.dir/build

Yggdrasil/utils/CMakeFiles/bloomfilters.dir/clean:
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/utils && $(CMAKE_COMMAND) -P CMakeFiles/bloomfilters.dir/cmake_clean.cmake
.PHONY : Yggdrasil/utils/CMakeFiles/bloomfilters.dir/clean

Yggdrasil/utils/CMakeFiles/bloomfilters.dir/depend:
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jpantao/Git/BScResearch/Yggdrasil /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/utils /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/utils /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/utils/CMakeFiles/bloomfilters.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Yggdrasil/utils/CMakeFiles/bloomfilters.dir/depend
