# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /usr/local/lib/python3.9/site-packages/cmake/data/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /usr/local/lib/python3.9/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Saul/graphics/engine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Saul/graphics/engine/build

# Include any dependencies generated for this target.
include CMakeFiles/Engine.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Engine.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Engine.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Engine.dir/flags.make

CMakeFiles/Engine.dir/Engine.cpp.o: CMakeFiles/Engine.dir/flags.make
CMakeFiles/Engine.dir/Engine.cpp.o: ../Engine.cpp
CMakeFiles/Engine.dir/Engine.cpp.o: CMakeFiles/Engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Saul/graphics/engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Engine.dir/Engine.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Engine.dir/Engine.cpp.o -MF CMakeFiles/Engine.dir/Engine.cpp.o.d -o CMakeFiles/Engine.dir/Engine.cpp.o -c /Users/Saul/graphics/engine/Engine.cpp

CMakeFiles/Engine.dir/Engine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Engine.dir/Engine.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Saul/graphics/engine/Engine.cpp > CMakeFiles/Engine.dir/Engine.cpp.i

CMakeFiles/Engine.dir/Engine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Engine.dir/Engine.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Saul/graphics/engine/Engine.cpp -o CMakeFiles/Engine.dir/Engine.cpp.s

CMakeFiles/Engine.dir/Gui.cpp.o: CMakeFiles/Engine.dir/flags.make
CMakeFiles/Engine.dir/Gui.cpp.o: ../Gui.cpp
CMakeFiles/Engine.dir/Gui.cpp.o: CMakeFiles/Engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Saul/graphics/engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Engine.dir/Gui.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Engine.dir/Gui.cpp.o -MF CMakeFiles/Engine.dir/Gui.cpp.o.d -o CMakeFiles/Engine.dir/Gui.cpp.o -c /Users/Saul/graphics/engine/Gui.cpp

CMakeFiles/Engine.dir/Gui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Engine.dir/Gui.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Saul/graphics/engine/Gui.cpp > CMakeFiles/Engine.dir/Gui.cpp.i

CMakeFiles/Engine.dir/Gui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Engine.dir/Gui.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Saul/graphics/engine/Gui.cpp -o CMakeFiles/Engine.dir/Gui.cpp.s

CMakeFiles/Engine.dir/Ball.cpp.o: CMakeFiles/Engine.dir/flags.make
CMakeFiles/Engine.dir/Ball.cpp.o: ../Ball.cpp
CMakeFiles/Engine.dir/Ball.cpp.o: CMakeFiles/Engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Saul/graphics/engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Engine.dir/Ball.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Engine.dir/Ball.cpp.o -MF CMakeFiles/Engine.dir/Ball.cpp.o.d -o CMakeFiles/Engine.dir/Ball.cpp.o -c /Users/Saul/graphics/engine/Ball.cpp

CMakeFiles/Engine.dir/Ball.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Engine.dir/Ball.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Saul/graphics/engine/Ball.cpp > CMakeFiles/Engine.dir/Ball.cpp.i

CMakeFiles/Engine.dir/Ball.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Engine.dir/Ball.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Saul/graphics/engine/Ball.cpp -o CMakeFiles/Engine.dir/Ball.cpp.s

CMakeFiles/Engine.dir/Brick.cpp.o: CMakeFiles/Engine.dir/flags.make
CMakeFiles/Engine.dir/Brick.cpp.o: ../Brick.cpp
CMakeFiles/Engine.dir/Brick.cpp.o: CMakeFiles/Engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Saul/graphics/engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Engine.dir/Brick.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Engine.dir/Brick.cpp.o -MF CMakeFiles/Engine.dir/Brick.cpp.o.d -o CMakeFiles/Engine.dir/Brick.cpp.o -c /Users/Saul/graphics/engine/Brick.cpp

CMakeFiles/Engine.dir/Brick.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Engine.dir/Brick.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Saul/graphics/engine/Brick.cpp > CMakeFiles/Engine.dir/Brick.cpp.i

CMakeFiles/Engine.dir/Brick.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Engine.dir/Brick.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Saul/graphics/engine/Brick.cpp -o CMakeFiles/Engine.dir/Brick.cpp.s

CMakeFiles/Engine.dir/imgui.cpp.o: CMakeFiles/Engine.dir/flags.make
CMakeFiles/Engine.dir/imgui.cpp.o: ../imgui.cpp
CMakeFiles/Engine.dir/imgui.cpp.o: CMakeFiles/Engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Saul/graphics/engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Engine.dir/imgui.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Engine.dir/imgui.cpp.o -MF CMakeFiles/Engine.dir/imgui.cpp.o.d -o CMakeFiles/Engine.dir/imgui.cpp.o -c /Users/Saul/graphics/engine/imgui.cpp

CMakeFiles/Engine.dir/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Engine.dir/imgui.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Saul/graphics/engine/imgui.cpp > CMakeFiles/Engine.dir/imgui.cpp.i

CMakeFiles/Engine.dir/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Engine.dir/imgui.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Saul/graphics/engine/imgui.cpp -o CMakeFiles/Engine.dir/imgui.cpp.s

CMakeFiles/Engine.dir/imgui_draw.cpp.o: CMakeFiles/Engine.dir/flags.make
CMakeFiles/Engine.dir/imgui_draw.cpp.o: ../imgui_draw.cpp
CMakeFiles/Engine.dir/imgui_draw.cpp.o: CMakeFiles/Engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Saul/graphics/engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Engine.dir/imgui_draw.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Engine.dir/imgui_draw.cpp.o -MF CMakeFiles/Engine.dir/imgui_draw.cpp.o.d -o CMakeFiles/Engine.dir/imgui_draw.cpp.o -c /Users/Saul/graphics/engine/imgui_draw.cpp

CMakeFiles/Engine.dir/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Engine.dir/imgui_draw.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Saul/graphics/engine/imgui_draw.cpp > CMakeFiles/Engine.dir/imgui_draw.cpp.i

CMakeFiles/Engine.dir/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Engine.dir/imgui_draw.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Saul/graphics/engine/imgui_draw.cpp -o CMakeFiles/Engine.dir/imgui_draw.cpp.s

CMakeFiles/Engine.dir/imgui_tables.cpp.o: CMakeFiles/Engine.dir/flags.make
CMakeFiles/Engine.dir/imgui_tables.cpp.o: ../imgui_tables.cpp
CMakeFiles/Engine.dir/imgui_tables.cpp.o: CMakeFiles/Engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Saul/graphics/engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Engine.dir/imgui_tables.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Engine.dir/imgui_tables.cpp.o -MF CMakeFiles/Engine.dir/imgui_tables.cpp.o.d -o CMakeFiles/Engine.dir/imgui_tables.cpp.o -c /Users/Saul/graphics/engine/imgui_tables.cpp

CMakeFiles/Engine.dir/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Engine.dir/imgui_tables.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Saul/graphics/engine/imgui_tables.cpp > CMakeFiles/Engine.dir/imgui_tables.cpp.i

CMakeFiles/Engine.dir/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Engine.dir/imgui_tables.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Saul/graphics/engine/imgui_tables.cpp -o CMakeFiles/Engine.dir/imgui_tables.cpp.s

CMakeFiles/Engine.dir/imgui_widgets.cpp.o: CMakeFiles/Engine.dir/flags.make
CMakeFiles/Engine.dir/imgui_widgets.cpp.o: ../imgui_widgets.cpp
CMakeFiles/Engine.dir/imgui_widgets.cpp.o: CMakeFiles/Engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Saul/graphics/engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Engine.dir/imgui_widgets.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Engine.dir/imgui_widgets.cpp.o -MF CMakeFiles/Engine.dir/imgui_widgets.cpp.o.d -o CMakeFiles/Engine.dir/imgui_widgets.cpp.o -c /Users/Saul/graphics/engine/imgui_widgets.cpp

CMakeFiles/Engine.dir/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Engine.dir/imgui_widgets.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Saul/graphics/engine/imgui_widgets.cpp > CMakeFiles/Engine.dir/imgui_widgets.cpp.i

CMakeFiles/Engine.dir/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Engine.dir/imgui_widgets.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Saul/graphics/engine/imgui_widgets.cpp -o CMakeFiles/Engine.dir/imgui_widgets.cpp.s

CMakeFiles/Engine.dir/imgui_demo.cpp.o: CMakeFiles/Engine.dir/flags.make
CMakeFiles/Engine.dir/imgui_demo.cpp.o: ../imgui_demo.cpp
CMakeFiles/Engine.dir/imgui_demo.cpp.o: CMakeFiles/Engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Saul/graphics/engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Engine.dir/imgui_demo.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Engine.dir/imgui_demo.cpp.o -MF CMakeFiles/Engine.dir/imgui_demo.cpp.o.d -o CMakeFiles/Engine.dir/imgui_demo.cpp.o -c /Users/Saul/graphics/engine/imgui_demo.cpp

CMakeFiles/Engine.dir/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Engine.dir/imgui_demo.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Saul/graphics/engine/imgui_demo.cpp > CMakeFiles/Engine.dir/imgui_demo.cpp.i

CMakeFiles/Engine.dir/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Engine.dir/imgui_demo.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Saul/graphics/engine/imgui_demo.cpp -o CMakeFiles/Engine.dir/imgui_demo.cpp.s

CMakeFiles/Engine.dir/imgui-SFML.cpp.o: CMakeFiles/Engine.dir/flags.make
CMakeFiles/Engine.dir/imgui-SFML.cpp.o: ../imgui-SFML.cpp
CMakeFiles/Engine.dir/imgui-SFML.cpp.o: CMakeFiles/Engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Saul/graphics/engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/Engine.dir/imgui-SFML.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Engine.dir/imgui-SFML.cpp.o -MF CMakeFiles/Engine.dir/imgui-SFML.cpp.o.d -o CMakeFiles/Engine.dir/imgui-SFML.cpp.o -c /Users/Saul/graphics/engine/imgui-SFML.cpp

CMakeFiles/Engine.dir/imgui-SFML.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Engine.dir/imgui-SFML.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Saul/graphics/engine/imgui-SFML.cpp > CMakeFiles/Engine.dir/imgui-SFML.cpp.i

CMakeFiles/Engine.dir/imgui-SFML.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Engine.dir/imgui-SFML.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Saul/graphics/engine/imgui-SFML.cpp -o CMakeFiles/Engine.dir/imgui-SFML.cpp.s

# Object files for target Engine
Engine_OBJECTS = \
"CMakeFiles/Engine.dir/Engine.cpp.o" \
"CMakeFiles/Engine.dir/Gui.cpp.o" \
"CMakeFiles/Engine.dir/Ball.cpp.o" \
"CMakeFiles/Engine.dir/Brick.cpp.o" \
"CMakeFiles/Engine.dir/imgui.cpp.o" \
"CMakeFiles/Engine.dir/imgui_draw.cpp.o" \
"CMakeFiles/Engine.dir/imgui_tables.cpp.o" \
"CMakeFiles/Engine.dir/imgui_widgets.cpp.o" \
"CMakeFiles/Engine.dir/imgui_demo.cpp.o" \
"CMakeFiles/Engine.dir/imgui-SFML.cpp.o"

# External object files for target Engine
Engine_EXTERNAL_OBJECTS =

Engine: CMakeFiles/Engine.dir/Engine.cpp.o
Engine: CMakeFiles/Engine.dir/Gui.cpp.o
Engine: CMakeFiles/Engine.dir/Ball.cpp.o
Engine: CMakeFiles/Engine.dir/Brick.cpp.o
Engine: CMakeFiles/Engine.dir/imgui.cpp.o
Engine: CMakeFiles/Engine.dir/imgui_draw.cpp.o
Engine: CMakeFiles/Engine.dir/imgui_tables.cpp.o
Engine: CMakeFiles/Engine.dir/imgui_widgets.cpp.o
Engine: CMakeFiles/Engine.dir/imgui_demo.cpp.o
Engine: CMakeFiles/Engine.dir/imgui-SFML.cpp.o
Engine: CMakeFiles/Engine.dir/build.make
Engine: /Library/Frameworks/./sfml-graphics.framework/Versions/2.5.1/sfml-graphics
Engine: /Library/Frameworks/./sfml-window.framework/Versions/2.5.1/sfml-window
Engine: /Library/Frameworks/./sfml-system.framework/Versions/2.5.1/sfml-system
Engine: CMakeFiles/Engine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Saul/graphics/engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable Engine"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Engine.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Engine.dir/build: Engine
.PHONY : CMakeFiles/Engine.dir/build

CMakeFiles/Engine.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Engine.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Engine.dir/clean

CMakeFiles/Engine.dir/depend:
	cd /Users/Saul/graphics/engine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Saul/graphics/engine /Users/Saul/graphics/engine /Users/Saul/graphics/engine/build /Users/Saul/graphics/engine/build /Users/Saul/graphics/engine/build/CMakeFiles/Engine.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Engine.dir/depend
