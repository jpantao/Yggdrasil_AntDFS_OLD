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
include Yggdrasil/remote_control_new/applications/CMakeFiles/cmdshutdown.dir/depend.make

# Include the progress variables for this target.
include Yggdrasil/remote_control_new/applications/CMakeFiles/cmdshutdown.dir/progress.make

# Include the compile flags for this target's objects.
include Yggdrasil/remote_control_new/applications/CMakeFiles/cmdshutdown.dir/flags.make

Yggdrasil/remote_control_new/applications/CMakeFiles/cmdshutdown.dir/tools/shutdown.c.o: Yggdrasil/remote_control_new/applications/CMakeFiles/cmdshutdown.dir/flags.make
Yggdrasil/remote_control_new/applications/CMakeFiles/cmdshutdown.dir/tools/shutdown.c.o: ../Yggdrasil/remote_control_new/applications/tools/shutdown.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Yggdrasil/remote_control_new/applications/CMakeFiles/cmdshutdown.dir/tools/shutdown.c.o"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/remote_control_new/applications && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cmdshutdown.dir/tools/shutdown.c.o   -c /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/remote_control_new/applications/tools/shutdown.c

Yggdrasil/remote_control_new/applications/CMakeFiles/cmdshutdown.dir/tools/shutdown.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cmdshutdown.dir/tools/shutdown.c.i"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/remote_control_new/applications && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/remote_control_new/applications/tools/shutdown.c > CMakeFiles/cmdshutdown.dir/tools/shutdown.c.i

Yggdrasil/remote_control_new/applications/CMakeFiles/cmdshutdown.dir/tools/shutdown.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cmdshutdown.dir/tools/shutdown.c.s"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/remote_control_new/applications && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/remote_control_new/applications/tools/shutdown.c -o CMakeFiles/cmdshutdown.dir/tools/shutdown.c.s

# Object files for target cmdshutdown
cmdshutdown_OBJECTS = \
"CMakeFiles/cmdshutdown.dir/tools/shutdown.c.o"

# External object files for target cmdshutdown
cmdshutdown_EXTERNAL_OBJECTS =

../bin/cmdshutdown: Yggdrasil/remote_control_new/applications/CMakeFiles/cmdshutdown.dir/tools/shutdown.c.o
../bin/cmdshutdown: Yggdrasil/remote_control_new/applications/CMakeFiles/cmdshutdown.dir/build.make
../bin/cmdshutdown: ../lib/libcmdio_new.a
../bin/cmdshutdown: Yggdrasil/remote_control_new/applications/CMakeFiles/cmdshutdown.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../../../../bin/cmdshutdown"
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/remote_control_new/applications && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cmdshutdown.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Yggdrasil/remote_control_new/applications/CMakeFiles/cmdshutdown.dir/build: ../bin/cmdshutdown

.PHONY : Yggdrasil/remote_control_new/applications/CMakeFiles/cmdshutdown.dir/build

Yggdrasil/remote_control_new/applications/CMakeFiles/cmdshutdown.dir/clean:
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/remote_control_new/applications && $(CMAKE_COMMAND) -P CMakeFiles/cmdshutdown.dir/cmake_clean.cmake
.PHONY : Yggdrasil/remote_control_new/applications/CMakeFiles/cmdshutdown.dir/clean

Yggdrasil/remote_control_new/applications/CMakeFiles/cmdshutdown.dir/depend:
	cd /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jpantao/Git/BScResearch/Yggdrasil /home/jpantao/Git/BScResearch/Yggdrasil/Yggdrasil/remote_control_new/applications /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/remote_control_new/applications /home/jpantao/Git/BScResearch/Yggdrasil/cmake-build-debug/Yggdrasil/remote_control_new/applications/CMakeFiles/cmdshutdown.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Yggdrasil/remote_control_new/applications/CMakeFiles/cmdshutdown.dir/depend

