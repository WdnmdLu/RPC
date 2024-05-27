# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /mnt/TestShare/Work/Project/RPC

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/TestShare/Work/Project/RPC/build

# Include any dependencies generated for this target.
include src/CMakeFiles/mprpc.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/mprpc.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/mprpc.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/mprpc.dir/flags.make

src/CMakeFiles/mprpc.dir/MprpcConfig.cpp.o: src/CMakeFiles/mprpc.dir/flags.make
src/CMakeFiles/mprpc.dir/MprpcConfig.cpp.o: ../src/MprpcConfig.cpp
src/CMakeFiles/mprpc.dir/MprpcConfig.cpp.o: src/CMakeFiles/mprpc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/TestShare/Work/Project/RPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/mprpc.dir/MprpcConfig.cpp.o"
	cd /mnt/TestShare/Work/Project/RPC/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/mprpc.dir/MprpcConfig.cpp.o -MF CMakeFiles/mprpc.dir/MprpcConfig.cpp.o.d -o CMakeFiles/mprpc.dir/MprpcConfig.cpp.o -c /mnt/TestShare/Work/Project/RPC/src/MprpcConfig.cpp

src/CMakeFiles/mprpc.dir/MprpcConfig.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mprpc.dir/MprpcConfig.cpp.i"
	cd /mnt/TestShare/Work/Project/RPC/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/TestShare/Work/Project/RPC/src/MprpcConfig.cpp > CMakeFiles/mprpc.dir/MprpcConfig.cpp.i

src/CMakeFiles/mprpc.dir/MprpcConfig.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mprpc.dir/MprpcConfig.cpp.s"
	cd /mnt/TestShare/Work/Project/RPC/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/TestShare/Work/Project/RPC/src/MprpcConfig.cpp -o CMakeFiles/mprpc.dir/MprpcConfig.cpp.s

src/CMakeFiles/mprpc.dir/MrprcApplication.cpp.o: src/CMakeFiles/mprpc.dir/flags.make
src/CMakeFiles/mprpc.dir/MrprcApplication.cpp.o: ../src/MrprcApplication.cpp
src/CMakeFiles/mprpc.dir/MrprcApplication.cpp.o: src/CMakeFiles/mprpc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/TestShare/Work/Project/RPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/mprpc.dir/MrprcApplication.cpp.o"
	cd /mnt/TestShare/Work/Project/RPC/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/mprpc.dir/MrprcApplication.cpp.o -MF CMakeFiles/mprpc.dir/MrprcApplication.cpp.o.d -o CMakeFiles/mprpc.dir/MrprcApplication.cpp.o -c /mnt/TestShare/Work/Project/RPC/src/MrprcApplication.cpp

src/CMakeFiles/mprpc.dir/MrprcApplication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mprpc.dir/MrprcApplication.cpp.i"
	cd /mnt/TestShare/Work/Project/RPC/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/TestShare/Work/Project/RPC/src/MrprcApplication.cpp > CMakeFiles/mprpc.dir/MrprcApplication.cpp.i

src/CMakeFiles/mprpc.dir/MrprcApplication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mprpc.dir/MrprcApplication.cpp.s"
	cd /mnt/TestShare/Work/Project/RPC/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/TestShare/Work/Project/RPC/src/MrprcApplication.cpp -o CMakeFiles/mprpc.dir/MrprcApplication.cpp.s

src/CMakeFiles/mprpc.dir/RpcProvider.cpp.o: src/CMakeFiles/mprpc.dir/flags.make
src/CMakeFiles/mprpc.dir/RpcProvider.cpp.o: ../src/RpcProvider.cpp
src/CMakeFiles/mprpc.dir/RpcProvider.cpp.o: src/CMakeFiles/mprpc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/TestShare/Work/Project/RPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/mprpc.dir/RpcProvider.cpp.o"
	cd /mnt/TestShare/Work/Project/RPC/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/mprpc.dir/RpcProvider.cpp.o -MF CMakeFiles/mprpc.dir/RpcProvider.cpp.o.d -o CMakeFiles/mprpc.dir/RpcProvider.cpp.o -c /mnt/TestShare/Work/Project/RPC/src/RpcProvider.cpp

src/CMakeFiles/mprpc.dir/RpcProvider.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mprpc.dir/RpcProvider.cpp.i"
	cd /mnt/TestShare/Work/Project/RPC/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/TestShare/Work/Project/RPC/src/RpcProvider.cpp > CMakeFiles/mprpc.dir/RpcProvider.cpp.i

src/CMakeFiles/mprpc.dir/RpcProvider.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mprpc.dir/RpcProvider.cpp.s"
	cd /mnt/TestShare/Work/Project/RPC/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/TestShare/Work/Project/RPC/src/RpcProvider.cpp -o CMakeFiles/mprpc.dir/RpcProvider.cpp.s

# Object files for target mprpc
mprpc_OBJECTS = \
"CMakeFiles/mprpc.dir/MprpcConfig.cpp.o" \
"CMakeFiles/mprpc.dir/MrprcApplication.cpp.o" \
"CMakeFiles/mprpc.dir/RpcProvider.cpp.o"

# External object files for target mprpc
mprpc_EXTERNAL_OBJECTS =

../lib/libmprpc.so: src/CMakeFiles/mprpc.dir/MprpcConfig.cpp.o
../lib/libmprpc.so: src/CMakeFiles/mprpc.dir/MrprcApplication.cpp.o
../lib/libmprpc.so: src/CMakeFiles/mprpc.dir/RpcProvider.cpp.o
../lib/libmprpc.so: src/CMakeFiles/mprpc.dir/build.make
../lib/libmprpc.so: src/CMakeFiles/mprpc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/TestShare/Work/Project/RPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library ../../lib/libmprpc.so"
	cd /mnt/TestShare/Work/Project/RPC/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mprpc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/mprpc.dir/build: ../lib/libmprpc.so
.PHONY : src/CMakeFiles/mprpc.dir/build

src/CMakeFiles/mprpc.dir/clean:
	cd /mnt/TestShare/Work/Project/RPC/build/src && $(CMAKE_COMMAND) -P CMakeFiles/mprpc.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/mprpc.dir/clean

src/CMakeFiles/mprpc.dir/depend:
	cd /mnt/TestShare/Work/Project/RPC/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/TestShare/Work/Project/RPC /mnt/TestShare/Work/Project/RPC/src /mnt/TestShare/Work/Project/RPC/build /mnt/TestShare/Work/Project/RPC/build/src /mnt/TestShare/Work/Project/RPC/build/src/CMakeFiles/mprpc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/mprpc.dir/depend

