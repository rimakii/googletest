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
CMAKE_SOURCE_DIR = /workspaces/os/lab57

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/os/lab57/build

# Include any dependencies generated for this target.
include CMakeFiles/node.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/node.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/node.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/node.dir/flags.make

CMakeFiles/node.dir/src/node.cpp.o: CMakeFiles/node.dir/flags.make
CMakeFiles/node.dir/src/node.cpp.o: /workspaces/os/lab57/src/node.cpp
CMakeFiles/node.dir/src/node.cpp.o: CMakeFiles/node.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/os/lab57/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/node.dir/src/node.cpp.o"
	/usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/node.dir/src/node.cpp.o -MF CMakeFiles/node.dir/src/node.cpp.o.d -o CMakeFiles/node.dir/src/node.cpp.o -c /workspaces/os/lab57/src/node.cpp

CMakeFiles/node.dir/src/node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/node.dir/src/node.cpp.i"
	/usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/os/lab57/src/node.cpp > CMakeFiles/node.dir/src/node.cpp.i

CMakeFiles/node.dir/src/node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/node.dir/src/node.cpp.s"
	/usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/os/lab57/src/node.cpp -o CMakeFiles/node.dir/src/node.cpp.s

# Object files for target node
node_OBJECTS = \
"CMakeFiles/node.dir/src/node.cpp.o"

# External object files for target node
node_EXTERNAL_OBJECTS =

node: CMakeFiles/node.dir/src/node.cpp.o
node: CMakeFiles/node.dir/build.make
node: CMakeFiles/node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/os/lab57/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable node"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/node.dir/build: node
.PHONY : CMakeFiles/node.dir/build

CMakeFiles/node.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/node.dir/cmake_clean.cmake
.PHONY : CMakeFiles/node.dir/clean

CMakeFiles/node.dir/depend:
	cd /workspaces/os/lab57/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/os/lab57 /workspaces/os/lab57 /workspaces/os/lab57/build /workspaces/os/lab57/build /workspaces/os/lab57/build/CMakeFiles/node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/node.dir/depend

