# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/nathan/personalengine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nathan/personalengine/build

# Include any dependencies generated for this target.
include CMakeFiles/GameEngine.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/GameEngine.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/GameEngine.dir/flags.make

CMakeFiles/GameEngine.dir/main.cpp.o: CMakeFiles/GameEngine.dir/flags.make
CMakeFiles/GameEngine.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nathan/personalengine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/GameEngine.dir/main.cpp.o"
	/usr/bin/x86_64-linux-gnu-g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GameEngine.dir/main.cpp.o -c /home/nathan/personalengine/main.cpp

CMakeFiles/GameEngine.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GameEngine.dir/main.cpp.i"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nathan/personalengine/main.cpp > CMakeFiles/GameEngine.dir/main.cpp.i

CMakeFiles/GameEngine.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GameEngine.dir/main.cpp.s"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nathan/personalengine/main.cpp -o CMakeFiles/GameEngine.dir/main.cpp.s

CMakeFiles/GameEngine.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/GameEngine.dir/main.cpp.o.requires

CMakeFiles/GameEngine.dir/main.cpp.o.provides: CMakeFiles/GameEngine.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/GameEngine.dir/build.make CMakeFiles/GameEngine.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/GameEngine.dir/main.cpp.o.provides

CMakeFiles/GameEngine.dir/main.cpp.o.provides.build: CMakeFiles/GameEngine.dir/main.cpp.o


CMakeFiles/GameEngine.dir/src/glad.c.o: CMakeFiles/GameEngine.dir/flags.make
CMakeFiles/GameEngine.dir/src/glad.c.o: ../src/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nathan/personalengine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/GameEngine.dir/src/glad.c.o"
	/usr/bin/x86_64-linux-gnu-gcc-7 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/GameEngine.dir/src/glad.c.o   -c /home/nathan/personalengine/src/glad.c

CMakeFiles/GameEngine.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/GameEngine.dir/src/glad.c.i"
	/usr/bin/x86_64-linux-gnu-gcc-7 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nathan/personalengine/src/glad.c > CMakeFiles/GameEngine.dir/src/glad.c.i

CMakeFiles/GameEngine.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/GameEngine.dir/src/glad.c.s"
	/usr/bin/x86_64-linux-gnu-gcc-7 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nathan/personalengine/src/glad.c -o CMakeFiles/GameEngine.dir/src/glad.c.s

CMakeFiles/GameEngine.dir/src/glad.c.o.requires:

.PHONY : CMakeFiles/GameEngine.dir/src/glad.c.o.requires

CMakeFiles/GameEngine.dir/src/glad.c.o.provides: CMakeFiles/GameEngine.dir/src/glad.c.o.requires
	$(MAKE) -f CMakeFiles/GameEngine.dir/build.make CMakeFiles/GameEngine.dir/src/glad.c.o.provides.build
.PHONY : CMakeFiles/GameEngine.dir/src/glad.c.o.provides

CMakeFiles/GameEngine.dir/src/glad.c.o.provides.build: CMakeFiles/GameEngine.dir/src/glad.c.o


# Object files for target GameEngine
GameEngine_OBJECTS = \
"CMakeFiles/GameEngine.dir/main.cpp.o" \
"CMakeFiles/GameEngine.dir/src/glad.c.o"

# External object files for target GameEngine
GameEngine_EXTERNAL_OBJECTS =

GameEngine: CMakeFiles/GameEngine.dir/main.cpp.o
GameEngine: CMakeFiles/GameEngine.dir/src/glad.c.o
GameEngine: CMakeFiles/GameEngine.dir/build.make
GameEngine: /usr/lib/x86_64-linux-gnu/libGL.so
GameEngine: /usr/local/lib/libglfw3.a
GameEngine: /usr/lib/x86_64-linux-gnu/librt.so
GameEngine: /usr/lib/x86_64-linux-gnu/libm.so
GameEngine: /usr/lib/x86_64-linux-gnu/libX11.so
GameEngine: CMakeFiles/GameEngine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nathan/personalengine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable GameEngine"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GameEngine.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/GameEngine.dir/build: GameEngine

.PHONY : CMakeFiles/GameEngine.dir/build

CMakeFiles/GameEngine.dir/requires: CMakeFiles/GameEngine.dir/main.cpp.o.requires
CMakeFiles/GameEngine.dir/requires: CMakeFiles/GameEngine.dir/src/glad.c.o.requires

.PHONY : CMakeFiles/GameEngine.dir/requires

CMakeFiles/GameEngine.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/GameEngine.dir/cmake_clean.cmake
.PHONY : CMakeFiles/GameEngine.dir/clean

CMakeFiles/GameEngine.dir/depend:
	cd /home/nathan/personalengine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nathan/personalengine /home/nathan/personalengine /home/nathan/personalengine/build /home/nathan/personalengine/build /home/nathan/personalengine/build/CMakeFiles/GameEngine.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/GameEngine.dir/depend

