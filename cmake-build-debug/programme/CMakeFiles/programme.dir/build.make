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
include programme/CMakeFiles/programme.dir/depend.make

# Include the progress variables for this target.
include programme/CMakeFiles/programme.dir/progress.make

# Include the compile flags for this target's objects.
include programme/CMakeFiles/programme.dir/flags.make

programme/CMakeFiles/programme.dir/programme.cpp.o: programme/CMakeFiles/programme.dir/flags.make
programme/CMakeFiles/programme.dir/programme.cpp.o: ../programme/programme.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object programme/CMakeFiles/programme.dir/programme.cpp.o"
	cd /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/programme && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/programme.dir/programme.cpp.o -c /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/programme/programme.cpp

programme/CMakeFiles/programme.dir/programme.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/programme.dir/programme.cpp.i"
	cd /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/programme && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/programme/programme.cpp > CMakeFiles/programme.dir/programme.cpp.i

programme/CMakeFiles/programme.dir/programme.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/programme.dir/programme.cpp.s"
	cd /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/programme && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/programme/programme.cpp -o CMakeFiles/programme.dir/programme.cpp.s

# Object files for target programme
programme_OBJECTS = \
"CMakeFiles/programme.dir/programme.cpp.o"

# External object files for target programme
programme_EXTERNAL_OBJECTS =

programme/libprogramme.a: programme/CMakeFiles/programme.dir/programme.cpp.o
programme/libprogramme.a: programme/CMakeFiles/programme.dir/build.make
programme/libprogramme.a: programme/CMakeFiles/programme.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libprogramme.a"
	cd /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/programme && $(CMAKE_COMMAND) -P CMakeFiles/programme.dir/cmake_clean_target.cmake
	cd /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/programme && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/programme.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
programme/CMakeFiles/programme.dir/build: programme/libprogramme.a

.PHONY : programme/CMakeFiles/programme.dir/build

programme/CMakeFiles/programme.dir/clean:
	cd /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/programme && $(CMAKE_COMMAND) -P CMakeFiles/programme.dir/cmake_clean.cmake
.PHONY : programme/CMakeFiles/programme.dir/clean

programme/CMakeFiles/programme.dir/depend:
	cd /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/egl/Documents/sc/C++/DependencyInjection/EasyInject /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/programme /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/programme /home/egl/Documents/sc/C++/DependencyInjection/EasyInject/cmake-build-debug/programme/CMakeFiles/programme.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programme/CMakeFiles/programme.dir/depend
