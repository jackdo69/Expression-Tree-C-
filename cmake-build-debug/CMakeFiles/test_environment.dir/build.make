# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /home/jack/Downloads/clion-2017.1.1/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/jack/Downloads/clion-2017.1.1/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/jack/Desktop/UTS/Data Structures and Algorithms/test_environment"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/jack/Desktop/UTS/Data Structures and Algorithms/test_environment/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/test_environment.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_environment.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_environment.dir/flags.make

CMakeFiles/test_environment.dir/Assignment1Tests.cpp.o: CMakeFiles/test_environment.dir/flags.make
CMakeFiles/test_environment.dir/Assignment1Tests.cpp.o: ../Assignment1Tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/jack/Desktop/UTS/Data Structures and Algorithms/test_environment/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_environment.dir/Assignment1Tests.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_environment.dir/Assignment1Tests.cpp.o -c "/home/jack/Desktop/UTS/Data Structures and Algorithms/test_environment/Assignment1Tests.cpp"

CMakeFiles/test_environment.dir/Assignment1Tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_environment.dir/Assignment1Tests.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/jack/Desktop/UTS/Data Structures and Algorithms/test_environment/Assignment1Tests.cpp" > CMakeFiles/test_environment.dir/Assignment1Tests.cpp.i

CMakeFiles/test_environment.dir/Assignment1Tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_environment.dir/Assignment1Tests.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/jack/Desktop/UTS/Data Structures and Algorithms/test_environment/Assignment1Tests.cpp" -o CMakeFiles/test_environment.dir/Assignment1Tests.cpp.s

CMakeFiles/test_environment.dir/Assignment1Tests.cpp.o.requires:

.PHONY : CMakeFiles/test_environment.dir/Assignment1Tests.cpp.o.requires

CMakeFiles/test_environment.dir/Assignment1Tests.cpp.o.provides: CMakeFiles/test_environment.dir/Assignment1Tests.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_environment.dir/build.make CMakeFiles/test_environment.dir/Assignment1Tests.cpp.o.provides.build
.PHONY : CMakeFiles/test_environment.dir/Assignment1Tests.cpp.o.provides

CMakeFiles/test_environment.dir/Assignment1Tests.cpp.o.provides.build: CMakeFiles/test_environment.dir/Assignment1Tests.cpp.o


CMakeFiles/test_environment.dir/ExprTree.cpp.o: CMakeFiles/test_environment.dir/flags.make
CMakeFiles/test_environment.dir/ExprTree.cpp.o: ../ExprTree.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/jack/Desktop/UTS/Data Structures and Algorithms/test_environment/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/test_environment.dir/ExprTree.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_environment.dir/ExprTree.cpp.o -c "/home/jack/Desktop/UTS/Data Structures and Algorithms/test_environment/ExprTree.cpp"

CMakeFiles/test_environment.dir/ExprTree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_environment.dir/ExprTree.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/jack/Desktop/UTS/Data Structures and Algorithms/test_environment/ExprTree.cpp" > CMakeFiles/test_environment.dir/ExprTree.cpp.i

CMakeFiles/test_environment.dir/ExprTree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_environment.dir/ExprTree.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/jack/Desktop/UTS/Data Structures and Algorithms/test_environment/ExprTree.cpp" -o CMakeFiles/test_environment.dir/ExprTree.cpp.s

CMakeFiles/test_environment.dir/ExprTree.cpp.o.requires:

.PHONY : CMakeFiles/test_environment.dir/ExprTree.cpp.o.requires

CMakeFiles/test_environment.dir/ExprTree.cpp.o.provides: CMakeFiles/test_environment.dir/ExprTree.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_environment.dir/build.make CMakeFiles/test_environment.dir/ExprTree.cpp.o.provides.build
.PHONY : CMakeFiles/test_environment.dir/ExprTree.cpp.o.provides

CMakeFiles/test_environment.dir/ExprTree.cpp.o.provides.build: CMakeFiles/test_environment.dir/ExprTree.cpp.o


CMakeFiles/test_environment.dir/TreeNode.cpp.o: CMakeFiles/test_environment.dir/flags.make
CMakeFiles/test_environment.dir/TreeNode.cpp.o: ../TreeNode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/jack/Desktop/UTS/Data Structures and Algorithms/test_environment/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/test_environment.dir/TreeNode.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_environment.dir/TreeNode.cpp.o -c "/home/jack/Desktop/UTS/Data Structures and Algorithms/test_environment/TreeNode.cpp"

CMakeFiles/test_environment.dir/TreeNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_environment.dir/TreeNode.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/jack/Desktop/UTS/Data Structures and Algorithms/test_environment/TreeNode.cpp" > CMakeFiles/test_environment.dir/TreeNode.cpp.i

CMakeFiles/test_environment.dir/TreeNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_environment.dir/TreeNode.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/jack/Desktop/UTS/Data Structures and Algorithms/test_environment/TreeNode.cpp" -o CMakeFiles/test_environment.dir/TreeNode.cpp.s

CMakeFiles/test_environment.dir/TreeNode.cpp.o.requires:

.PHONY : CMakeFiles/test_environment.dir/TreeNode.cpp.o.requires

CMakeFiles/test_environment.dir/TreeNode.cpp.o.provides: CMakeFiles/test_environment.dir/TreeNode.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_environment.dir/build.make CMakeFiles/test_environment.dir/TreeNode.cpp.o.provides.build
.PHONY : CMakeFiles/test_environment.dir/TreeNode.cpp.o.provides

CMakeFiles/test_environment.dir/TreeNode.cpp.o.provides.build: CMakeFiles/test_environment.dir/TreeNode.cpp.o


# Object files for target test_environment
test_environment_OBJECTS = \
"CMakeFiles/test_environment.dir/Assignment1Tests.cpp.o" \
"CMakeFiles/test_environment.dir/ExprTree.cpp.o" \
"CMakeFiles/test_environment.dir/TreeNode.cpp.o"

# External object files for target test_environment
test_environment_EXTERNAL_OBJECTS =

test_environment: CMakeFiles/test_environment.dir/Assignment1Tests.cpp.o
test_environment: CMakeFiles/test_environment.dir/ExprTree.cpp.o
test_environment: CMakeFiles/test_environment.dir/TreeNode.cpp.o
test_environment: CMakeFiles/test_environment.dir/build.make
test_environment: CMakeFiles/test_environment.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/jack/Desktop/UTS/Data Structures and Algorithms/test_environment/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable test_environment"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_environment.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_environment.dir/build: test_environment

.PHONY : CMakeFiles/test_environment.dir/build

CMakeFiles/test_environment.dir/requires: CMakeFiles/test_environment.dir/Assignment1Tests.cpp.o.requires
CMakeFiles/test_environment.dir/requires: CMakeFiles/test_environment.dir/ExprTree.cpp.o.requires
CMakeFiles/test_environment.dir/requires: CMakeFiles/test_environment.dir/TreeNode.cpp.o.requires

.PHONY : CMakeFiles/test_environment.dir/requires

CMakeFiles/test_environment.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_environment.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_environment.dir/clean

CMakeFiles/test_environment.dir/depend:
	cd "/home/jack/Desktop/UTS/Data Structures and Algorithms/test_environment/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/jack/Desktop/UTS/Data Structures and Algorithms/test_environment" "/home/jack/Desktop/UTS/Data Structures and Algorithms/test_environment" "/home/jack/Desktop/UTS/Data Structures and Algorithms/test_environment/cmake-build-debug" "/home/jack/Desktop/UTS/Data Structures and Algorithms/test_environment/cmake-build-debug" "/home/jack/Desktop/UTS/Data Structures and Algorithms/test_environment/cmake-build-debug/CMakeFiles/test_environment.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/test_environment.dir/depend

