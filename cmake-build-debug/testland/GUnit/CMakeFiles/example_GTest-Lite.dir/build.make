# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /home/egl/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/191.7479.33/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/egl/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/191.7479.33/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/egl/Documents/sc/C++/DependencyInjection/EasyInject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug

# Include any dependencies generated for this target.
include testland/GUnit/CMakeFiles/example_GTest-Lite.dir/depend.make

# Include the progress variables for this target.
include testland/GUnit/CMakeFiles/example_GTest-Lite.dir/progress.make

# Include the compile flags for this target's objects.
include testland/GUnit/CMakeFiles/example_GTest-Lite.dir/flags.make

testland/GUnit/CMakeFiles/example_GTest-Lite.dir/example/GTest-Lite.cpp.o: testland/GUnit/CMakeFiles/example_GTest-Lite.dir/flags.make
testland/GUnit/CMakeFiles/example_GTest-Lite.dir/example/GTest-Lite.cpp.o: ../testland/GUnit/example/GTest-Lite.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object testland/GUnit/CMakeFiles/example_GTest-Lite.dir/example/GTest-Lite.cpp.o"
	cd /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/testland/GUnit && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_GTest-Lite.dir/example/GTest-Lite.cpp.o -c /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/testland/GUnit/example/GTest-Lite.cpp

testland/GUnit/CMakeFiles/example_GTest-Lite.dir/example/GTest-Lite.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_GTest-Lite.dir/example/GTest-Lite.cpp.i"
	cd /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/testland/GUnit && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/testland/GUnit/example/GTest-Lite.cpp > CMakeFiles/example_GTest-Lite.dir/example/GTest-Lite.cpp.i

testland/GUnit/CMakeFiles/example_GTest-Lite.dir/example/GTest-Lite.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_GTest-Lite.dir/example/GTest-Lite.cpp.s"
	cd /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/testland/GUnit && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/testland/GUnit/example/GTest-Lite.cpp -o CMakeFiles/example_GTest-Lite.dir/example/GTest-Lite.cpp.s

# Object files for target example_GTest-Lite
example_GTest__Lite_OBJECTS = \
"CMakeFiles/example_GTest-Lite.dir/example/GTest-Lite.cpp.o"

# External object files for target example_GTest-Lite
example_GTest__Lite_EXTERNAL_OBJECTS =

testland/GUnit/example_GTest-Lite: testland/GUnit/CMakeFiles/example_GTest-Lite.dir/example/GTest-Lite.cpp.o
testland/GUnit/example_GTest-Lite: testland/GUnit/CMakeFiles/example_GTest-Lite.dir/build.make
testland/GUnit/example_GTest-Lite: lib/libgtest_maind.a
testland/GUnit/example_GTest-Lite: lib/libgmock_maind.a
testland/GUnit/example_GTest-Lite: lib/libgmockd.a
testland/GUnit/example_GTest-Lite: lib/libgtestd.a
testland/GUnit/example_GTest-Lite: testland/GUnit/CMakeFiles/example_GTest-Lite.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable example_GTest-Lite"
	cd /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/testland/GUnit && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_GTest-Lite.dir/link.txt --verbose=$(VERBOSE)
	cd /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/testland/GUnit && SCENARIO= ./example_GTest-Lite

# Rule to build all files generated by this target.
testland/GUnit/CMakeFiles/example_GTest-Lite.dir/build: testland/GUnit/example_GTest-Lite

.PHONY : testland/GUnit/CMakeFiles/example_GTest-Lite.dir/build

testland/GUnit/CMakeFiles/example_GTest-Lite.dir/clean:
	cd /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/testland/GUnit && $(CMAKE_COMMAND) -P CMakeFiles/example_GTest-Lite.dir/cmake_clean.cmake
.PHONY : testland/GUnit/CMakeFiles/example_GTest-Lite.dir/clean

testland/GUnit/CMakeFiles/example_GTest-Lite.dir/depend:
	cd /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/egl/Documents/sc/C++/DependencyInjection/EasyInject /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/testland/GUnit /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/testland/GUnit /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/testland/GUnit/CMakeFiles/example_GTest-Lite.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : testland/GUnit/CMakeFiles/example_GTest-Lite.dir/depend

