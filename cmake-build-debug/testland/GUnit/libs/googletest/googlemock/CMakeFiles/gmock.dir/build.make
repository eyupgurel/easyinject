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
include testland/GUnit/libs/googletest/googlemock/CMakeFiles/gmock.dir/depend.make

# Include the progress variables for this target.
include testland/GUnit/libs/googletest/googlemock/CMakeFiles/gmock.dir/progress.make

# Include the compile flags for this target's objects.
include testland/GUnit/libs/googletest/googlemock/CMakeFiles/gmock.dir/flags.make

testland/GUnit/libs/googletest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o: testland/GUnit/libs/googletest/googlemock/CMakeFiles/gmock.dir/flags.make
testland/GUnit/libs/googletest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o: ../testland/GUnit/libs/googletest/googlemock/src/gmock-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object testland/GUnit/libs/googletest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o"
	cd /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/testland/GUnit/libs/googletest/googlemock && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gmock.dir/src/gmock-all.cc.o -c /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/testland/GUnit/libs/googletest/googlemock/src/gmock-all.cc

testland/GUnit/libs/googletest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmock.dir/src/gmock-all.cc.i"
	cd /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/testland/GUnit/libs/googletest/googlemock && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/testland/GUnit/libs/googletest/googlemock/src/gmock-all.cc > CMakeFiles/gmock.dir/src/gmock-all.cc.i

testland/GUnit/libs/googletest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmock.dir/src/gmock-all.cc.s"
	cd /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/testland/GUnit/libs/googletest/googlemock && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/testland/GUnit/libs/googletest/googlemock/src/gmock-all.cc -o CMakeFiles/gmock.dir/src/gmock-all.cc.s

# Object files for target gmock
gmock_OBJECTS = \
"CMakeFiles/gmock.dir/src/gmock-all.cc.o"

# External object files for target gmock
gmock_EXTERNAL_OBJECTS =

lib/libgmockd.a: testland/GUnit/libs/googletest/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o
lib/libgmockd.a: testland/GUnit/libs/googletest/googlemock/CMakeFiles/gmock.dir/build.make
lib/libgmockd.a: testland/GUnit/libs/googletest/googlemock/CMakeFiles/gmock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../../../lib/libgmockd.a"
	cd /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/testland/GUnit/libs/googletest/googlemock && $(CMAKE_COMMAND) -P CMakeFiles/gmock.dir/cmake_clean_target.cmake
	cd /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/testland/GUnit/libs/googletest/googlemock && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gmock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
testland/GUnit/libs/googletest/googlemock/CMakeFiles/gmock.dir/build: lib/libgmockd.a

.PHONY : testland/GUnit/libs/googletest/googlemock/CMakeFiles/gmock.dir/build

testland/GUnit/libs/googletest/googlemock/CMakeFiles/gmock.dir/clean:
	cd /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/testland/GUnit/libs/googletest/googlemock && $(CMAKE_COMMAND) -P CMakeFiles/gmock.dir/cmake_clean.cmake
.PHONY : testland/GUnit/libs/googletest/googlemock/CMakeFiles/gmock.dir/clean

testland/GUnit/libs/googletest/googlemock/CMakeFiles/gmock.dir/depend:
	cd /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/egl/Documents/sc/C++/DependencyInjection/EasyInject /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/testland/GUnit/libs/googletest/googlemock /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/testland/GUnit/libs/googletest/googlemock /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/testland/GUnit/libs/googletest/googlemock/CMakeFiles/gmock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : testland/GUnit/libs/googletest/googlemock/CMakeFiles/gmock.dir/depend

