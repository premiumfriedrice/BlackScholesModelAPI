# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.29.5/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.29.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lloydalba/Documents/Code/repos/Finance/BlackScholesModelCPP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lloydalba/Documents/Code/repos/Finance/BlackScholesModelCPP/build

# Include any dependencies generated for this target.
include CMakeFiles/BlackScholesModelCPP.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/BlackScholesModelCPP.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/BlackScholesModelCPP.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BlackScholesModelCPP.dir/flags.make

CMakeFiles/BlackScholesModelCPP.dir/main.cpp.o: CMakeFiles/BlackScholesModelCPP.dir/flags.make
CMakeFiles/BlackScholesModelCPP.dir/main.cpp.o: /Users/lloydalba/Documents/Code/repos/Finance/BlackScholesModelCPP/main.cpp
CMakeFiles/BlackScholesModelCPP.dir/main.cpp.o: CMakeFiles/BlackScholesModelCPP.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/lloydalba/Documents/Code/repos/Finance/BlackScholesModelCPP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BlackScholesModelCPP.dir/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BlackScholesModelCPP.dir/main.cpp.o -MF CMakeFiles/BlackScholesModelCPP.dir/main.cpp.o.d -o CMakeFiles/BlackScholesModelCPP.dir/main.cpp.o -c /Users/lloydalba/Documents/Code/repos/Finance/BlackScholesModelCPP/main.cpp

CMakeFiles/BlackScholesModelCPP.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/BlackScholesModelCPP.dir/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lloydalba/Documents/Code/repos/Finance/BlackScholesModelCPP/main.cpp > CMakeFiles/BlackScholesModelCPP.dir/main.cpp.i

CMakeFiles/BlackScholesModelCPP.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/BlackScholesModelCPP.dir/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lloydalba/Documents/Code/repos/Finance/BlackScholesModelCPP/main.cpp -o CMakeFiles/BlackScholesModelCPP.dir/main.cpp.s

# Object files for target BlackScholesModelCPP
BlackScholesModelCPP_OBJECTS = \
"CMakeFiles/BlackScholesModelCPP.dir/main.cpp.o"

# External object files for target BlackScholesModelCPP
BlackScholesModelCPP_EXTERNAL_OBJECTS =

BlackScholesModelCPP: CMakeFiles/BlackScholesModelCPP.dir/main.cpp.o
BlackScholesModelCPP: CMakeFiles/BlackScholesModelCPP.dir/build.make
BlackScholesModelCPP: CMakeFiles/BlackScholesModelCPP.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/lloydalba/Documents/Code/repos/Finance/BlackScholesModelCPP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable BlackScholesModelCPP"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BlackScholesModelCPP.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BlackScholesModelCPP.dir/build: BlackScholesModelCPP
.PHONY : CMakeFiles/BlackScholesModelCPP.dir/build

CMakeFiles/BlackScholesModelCPP.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/BlackScholesModelCPP.dir/cmake_clean.cmake
.PHONY : CMakeFiles/BlackScholesModelCPP.dir/clean

CMakeFiles/BlackScholesModelCPP.dir/depend:
	cd /Users/lloydalba/Documents/Code/repos/Finance/BlackScholesModelCPP/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lloydalba/Documents/Code/repos/Finance/BlackScholesModelCPP /Users/lloydalba/Documents/Code/repos/Finance/BlackScholesModelCPP /Users/lloydalba/Documents/Code/repos/Finance/BlackScholesModelCPP/build /Users/lloydalba/Documents/Code/repos/Finance/BlackScholesModelCPP/build /Users/lloydalba/Documents/Code/repos/Finance/BlackScholesModelCPP/build/CMakeFiles/BlackScholesModelCPP.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/BlackScholesModelCPP.dir/depend
