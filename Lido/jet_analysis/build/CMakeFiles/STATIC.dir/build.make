# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/yufu/Duke-Lido/jet_analysis

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/yufu/Duke-Lido/jet_analysis/build

# Include any dependencies generated for this target.
include CMakeFiles/STATIC.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/STATIC.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/STATIC.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/STATIC.dir/flags.make

CMakeFiles/STATIC.dir/jet_finding.cpp.o: CMakeFiles/STATIC.dir/flags.make
CMakeFiles/STATIC.dir/jet_finding.cpp.o: /Users/yufu/Duke-Lido/jet_analysis/jet_finding.cpp
CMakeFiles/STATIC.dir/jet_finding.cpp.o: CMakeFiles/STATIC.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yufu/Duke-Lido/jet_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/STATIC.dir/jet_finding.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/STATIC.dir/jet_finding.cpp.o -MF CMakeFiles/STATIC.dir/jet_finding.cpp.o.d -o CMakeFiles/STATIC.dir/jet_finding.cpp.o -c /Users/yufu/Duke-Lido/jet_analysis/jet_finding.cpp

CMakeFiles/STATIC.dir/jet_finding.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/STATIC.dir/jet_finding.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yufu/Duke-Lido/jet_analysis/jet_finding.cpp > CMakeFiles/STATIC.dir/jet_finding.cpp.i

CMakeFiles/STATIC.dir/jet_finding.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/STATIC.dir/jet_finding.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yufu/Duke-Lido/jet_analysis/jet_finding.cpp -o CMakeFiles/STATIC.dir/jet_finding.cpp.s

CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/lorentz.cpp.o: CMakeFiles/STATIC.dir/flags.make
CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/lorentz.cpp.o: /Users/yufu/Duke-Lido/src/lorentz.cpp
CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/lorentz.cpp.o: CMakeFiles/STATIC.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yufu/Duke-Lido/jet_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/lorentz.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/lorentz.cpp.o -MF CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/lorentz.cpp.o.d -o CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/lorentz.cpp.o -c /Users/yufu/Duke-Lido/src/lorentz.cpp

CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/lorentz.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/lorentz.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yufu/Duke-Lido/src/lorentz.cpp > CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/lorentz.cpp.i

CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/lorentz.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/lorentz.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yufu/Duke-Lido/src/lorentz.cpp -o CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/lorentz.cpp.s

CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/simpleLogger.cpp.o: CMakeFiles/STATIC.dir/flags.make
CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/simpleLogger.cpp.o: /Users/yufu/Duke-Lido/src/simpleLogger.cpp
CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/simpleLogger.cpp.o: CMakeFiles/STATIC.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yufu/Duke-Lido/jet_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/simpleLogger.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/simpleLogger.cpp.o -MF CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/simpleLogger.cpp.o.d -o CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/simpleLogger.cpp.o -c /Users/yufu/Duke-Lido/src/simpleLogger.cpp

CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/simpleLogger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/simpleLogger.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yufu/Duke-Lido/src/simpleLogger.cpp > CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/simpleLogger.cpp.i

CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/simpleLogger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/simpleLogger.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yufu/Duke-Lido/src/simpleLogger.cpp -o CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/simpleLogger.cpp.s

CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/hcubature.cpp.o: CMakeFiles/STATIC.dir/flags.make
CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/hcubature.cpp.o: /Users/yufu/Duke-Lido/src/hcubature.cpp
CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/hcubature.cpp.o: CMakeFiles/STATIC.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yufu/Duke-Lido/jet_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/hcubature.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/hcubature.cpp.o -MF CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/hcubature.cpp.o.d -o CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/hcubature.cpp.o -c /Users/yufu/Duke-Lido/src/hcubature.cpp

CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/hcubature.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/hcubature.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yufu/Duke-Lido/src/hcubature.cpp > CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/hcubature.cpp.i

CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/hcubature.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/hcubature.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yufu/Duke-Lido/src/hcubature.cpp -o CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/hcubature.cpp.s

CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/TableBase.cpp.o: CMakeFiles/STATIC.dir/flags.make
CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/TableBase.cpp.o: /Users/yufu/Duke-Lido/src/TableBase.cpp
CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/TableBase.cpp.o: CMakeFiles/STATIC.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yufu/Duke-Lido/jet_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/TableBase.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/TableBase.cpp.o -MF CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/TableBase.cpp.o.d -o CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/TableBase.cpp.o -c /Users/yufu/Duke-Lido/src/TableBase.cpp

CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/TableBase.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/TableBase.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yufu/Duke-Lido/src/TableBase.cpp > CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/TableBase.cpp.i

CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/TableBase.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/TableBase.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yufu/Duke-Lido/src/TableBase.cpp -o CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/TableBase.cpp.s

# Object files for target STATIC
STATIC_OBJECTS = \
"CMakeFiles/STATIC.dir/jet_finding.cpp.o" \
"CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/lorentz.cpp.o" \
"CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/simpleLogger.cpp.o" \
"CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/hcubature.cpp.o" \
"CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/TableBase.cpp.o"

# External object files for target STATIC
STATIC_EXTERNAL_OBJECTS =

libSTATIC.a: CMakeFiles/STATIC.dir/jet_finding.cpp.o
libSTATIC.a: CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/lorentz.cpp.o
libSTATIC.a: CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/simpleLogger.cpp.o
libSTATIC.a: CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/hcubature.cpp.o
libSTATIC.a: CMakeFiles/STATIC.dir/Users/yufu/Duke-Lido/src/TableBase.cpp.o
libSTATIC.a: CMakeFiles/STATIC.dir/build.make
libSTATIC.a: CMakeFiles/STATIC.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/yufu/Duke-Lido/jet_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library libSTATIC.a"
	$(CMAKE_COMMAND) -P CMakeFiles/STATIC.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/STATIC.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/STATIC.dir/build: libSTATIC.a
.PHONY : CMakeFiles/STATIC.dir/build

CMakeFiles/STATIC.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/STATIC.dir/cmake_clean.cmake
.PHONY : CMakeFiles/STATIC.dir/clean

CMakeFiles/STATIC.dir/depend:
	cd /Users/yufu/Duke-Lido/jet_analysis/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yufu/Duke-Lido/jet_analysis /Users/yufu/Duke-Lido/jet_analysis /Users/yufu/Duke-Lido/jet_analysis/build /Users/yufu/Duke-Lido/jet_analysis/build /Users/yufu/Duke-Lido/jet_analysis/build/CMakeFiles/STATIC.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/STATIC.dir/depend

