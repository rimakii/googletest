# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /workspaces/os/lab1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/os/lab1/build

# Include any dependencies generated for this target.
include CMakeFiles/CreateProcess_exe.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/CreateProcess_exe.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/CreateProcess_exe.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CreateProcess_exe.dir/flags.make

CMakeFiles/CreateProcess_exe.dir/CreateProcess.c.o: CMakeFiles/CreateProcess_exe.dir/flags.make
CMakeFiles/CreateProcess_exe.dir/CreateProcess.c.o: /workspaces/os/lab1/CreateProcess.c
CMakeFiles/CreateProcess_exe.dir/CreateProcess.c.o: CMakeFiles/CreateProcess_exe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/os/lab1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/CreateProcess_exe.dir/CreateProcess.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/CreateProcess_exe.dir/CreateProcess.c.o -MF CMakeFiles/CreateProcess_exe.dir/CreateProcess.c.o.d -o CMakeFiles/CreateProcess_exe.dir/CreateProcess.c.o -c /workspaces/os/lab1/CreateProcess.c

CMakeFiles/CreateProcess_exe.dir/CreateProcess.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CreateProcess_exe.dir/CreateProcess.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/os/lab1/CreateProcess.c > CMakeFiles/CreateProcess_exe.dir/CreateProcess.c.i

CMakeFiles/CreateProcess_exe.dir/CreateProcess.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CreateProcess_exe.dir/CreateProcess.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/os/lab1/CreateProcess.c -o CMakeFiles/CreateProcess_exe.dir/CreateProcess.c.s

# Object files for target CreateProcess_exe
CreateProcess_exe_OBJECTS = \
"CMakeFiles/CreateProcess_exe.dir/CreateProcess.c.o"

# External object files for target CreateProcess_exe
CreateProcess_exe_EXTERNAL_OBJECTS =

CreateProcess_exe: CMakeFiles/CreateProcess_exe.dir/CreateProcess.c.o
CreateProcess_exe: CMakeFiles/CreateProcess_exe.dir/build.make
CreateProcess_exe: CMakeFiles/CreateProcess_exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/os/lab1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable CreateProcess_exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CreateProcess_exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CreateProcess_exe.dir/build: CreateProcess_exe
.PHONY : CMakeFiles/CreateProcess_exe.dir/build

CMakeFiles/CreateProcess_exe.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CreateProcess_exe.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CreateProcess_exe.dir/clean

CMakeFiles/CreateProcess_exe.dir/depend:
	cd /workspaces/os/lab1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/os/lab1 /workspaces/os/lab1 /workspaces/os/lab1/build /workspaces/os/lab1/build /workspaces/os/lab1/build/CMakeFiles/CreateProcess_exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CreateProcess_exe.dir/depend

