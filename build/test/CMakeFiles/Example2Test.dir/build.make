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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/liu.11080/cmake-googletest-sample

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/liu.11080/cmake-googletest-sample/build

# Include any dependencies generated for this target.
include test/CMakeFiles/Example2Test.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/Example2Test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/Example2Test.dir/flags.make

test/CMakeFiles/Example2Test.dir/Example2Test.cpp.o: test/CMakeFiles/Example2Test.dir/flags.make
test/CMakeFiles/Example2Test.dir/Example2Test.cpp.o: ../test/Example2Test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liu.11080/cmake-googletest-sample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/Example2Test.dir/Example2Test.cpp.o"
	cd /home/liu.11080/cmake-googletest-sample/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Example2Test.dir/Example2Test.cpp.o -c /home/liu.11080/cmake-googletest-sample/test/Example2Test.cpp

test/CMakeFiles/Example2Test.dir/Example2Test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Example2Test.dir/Example2Test.cpp.i"
	cd /home/liu.11080/cmake-googletest-sample/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/liu.11080/cmake-googletest-sample/test/Example2Test.cpp > CMakeFiles/Example2Test.dir/Example2Test.cpp.i

test/CMakeFiles/Example2Test.dir/Example2Test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Example2Test.dir/Example2Test.cpp.s"
	cd /home/liu.11080/cmake-googletest-sample/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/liu.11080/cmake-googletest-sample/test/Example2Test.cpp -o CMakeFiles/Example2Test.dir/Example2Test.cpp.s

# Object files for target Example2Test
Example2Test_OBJECTS = \
"CMakeFiles/Example2Test.dir/Example2Test.cpp.o"

# External object files for target Example2Test
Example2Test_EXTERNAL_OBJECTS =

test/Example2Test: test/CMakeFiles/Example2Test.dir/Example2Test.cpp.o
test/Example2Test: test/CMakeFiles/Example2Test.dir/build.make
test/Example2Test: lib/libgtest_main.a
test/Example2Test: src/libexample_lib.so
test/Example2Test: lib/libgtest.a
test/Example2Test: test/CMakeFiles/Example2Test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/liu.11080/cmake-googletest-sample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Example2Test"
	cd /home/liu.11080/cmake-googletest-sample/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Example2Test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/Example2Test.dir/build: test/Example2Test

.PHONY : test/CMakeFiles/Example2Test.dir/build

test/CMakeFiles/Example2Test.dir/clean:
	cd /home/liu.11080/cmake-googletest-sample/build/test && $(CMAKE_COMMAND) -P CMakeFiles/Example2Test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/Example2Test.dir/clean

test/CMakeFiles/Example2Test.dir/depend:
	cd /home/liu.11080/cmake-googletest-sample/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/liu.11080/cmake-googletest-sample /home/liu.11080/cmake-googletest-sample/test /home/liu.11080/cmake-googletest-sample/build /home/liu.11080/cmake-googletest-sample/build/test /home/liu.11080/cmake-googletest-sample/build/test/CMakeFiles/Example2Test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/Example2Test.dir/depend

