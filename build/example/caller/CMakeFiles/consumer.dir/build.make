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
include example/caller/CMakeFiles/consumer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include example/caller/CMakeFiles/consumer.dir/compiler_depend.make

# Include the progress variables for this target.
include example/caller/CMakeFiles/consumer.dir/progress.make

# Include the compile flags for this target's objects.
include example/caller/CMakeFiles/consumer.dir/flags.make

example/caller/CMakeFiles/consumer.dir/calluserservice.cpp.o: example/caller/CMakeFiles/consumer.dir/flags.make
example/caller/CMakeFiles/consumer.dir/calluserservice.cpp.o: ../example/caller/calluserservice.cpp
example/caller/CMakeFiles/consumer.dir/calluserservice.cpp.o: example/caller/CMakeFiles/consumer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/TestShare/Work/Project/RPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object example/caller/CMakeFiles/consumer.dir/calluserservice.cpp.o"
	cd /mnt/TestShare/Work/Project/RPC/build/example/caller && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT example/caller/CMakeFiles/consumer.dir/calluserservice.cpp.o -MF CMakeFiles/consumer.dir/calluserservice.cpp.o.d -o CMakeFiles/consumer.dir/calluserservice.cpp.o -c /mnt/TestShare/Work/Project/RPC/example/caller/calluserservice.cpp

example/caller/CMakeFiles/consumer.dir/calluserservice.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/consumer.dir/calluserservice.cpp.i"
	cd /mnt/TestShare/Work/Project/RPC/build/example/caller && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/TestShare/Work/Project/RPC/example/caller/calluserservice.cpp > CMakeFiles/consumer.dir/calluserservice.cpp.i

example/caller/CMakeFiles/consumer.dir/calluserservice.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/consumer.dir/calluserservice.cpp.s"
	cd /mnt/TestShare/Work/Project/RPC/build/example/caller && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/TestShare/Work/Project/RPC/example/caller/calluserservice.cpp -o CMakeFiles/consumer.dir/calluserservice.cpp.s

example/caller/CMakeFiles/consumer.dir/__/user.pb.cc.o: example/caller/CMakeFiles/consumer.dir/flags.make
example/caller/CMakeFiles/consumer.dir/__/user.pb.cc.o: ../example/user.pb.cc
example/caller/CMakeFiles/consumer.dir/__/user.pb.cc.o: example/caller/CMakeFiles/consumer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/TestShare/Work/Project/RPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object example/caller/CMakeFiles/consumer.dir/__/user.pb.cc.o"
	cd /mnt/TestShare/Work/Project/RPC/build/example/caller && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT example/caller/CMakeFiles/consumer.dir/__/user.pb.cc.o -MF CMakeFiles/consumer.dir/__/user.pb.cc.o.d -o CMakeFiles/consumer.dir/__/user.pb.cc.o -c /mnt/TestShare/Work/Project/RPC/example/user.pb.cc

example/caller/CMakeFiles/consumer.dir/__/user.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/consumer.dir/__/user.pb.cc.i"
	cd /mnt/TestShare/Work/Project/RPC/build/example/caller && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/TestShare/Work/Project/RPC/example/user.pb.cc > CMakeFiles/consumer.dir/__/user.pb.cc.i

example/caller/CMakeFiles/consumer.dir/__/user.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/consumer.dir/__/user.pb.cc.s"
	cd /mnt/TestShare/Work/Project/RPC/build/example/caller && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/TestShare/Work/Project/RPC/example/user.pb.cc -o CMakeFiles/consumer.dir/__/user.pb.cc.s

# Object files for target consumer
consumer_OBJECTS = \
"CMakeFiles/consumer.dir/calluserservice.cpp.o" \
"CMakeFiles/consumer.dir/__/user.pb.cc.o"

# External object files for target consumer
consumer_EXTERNAL_OBJECTS =

../bin/consumer: example/caller/CMakeFiles/consumer.dir/calluserservice.cpp.o
../bin/consumer: example/caller/CMakeFiles/consumer.dir/__/user.pb.cc.o
../bin/consumer: example/caller/CMakeFiles/consumer.dir/build.make
../bin/consumer: ../lib/libmprpc.so
../bin/consumer: example/caller/CMakeFiles/consumer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/TestShare/Work/Project/RPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../../bin/consumer"
	cd /mnt/TestShare/Work/Project/RPC/build/example/caller && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/consumer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/caller/CMakeFiles/consumer.dir/build: ../bin/consumer
.PHONY : example/caller/CMakeFiles/consumer.dir/build

example/caller/CMakeFiles/consumer.dir/clean:
	cd /mnt/TestShare/Work/Project/RPC/build/example/caller && $(CMAKE_COMMAND) -P CMakeFiles/consumer.dir/cmake_clean.cmake
.PHONY : example/caller/CMakeFiles/consumer.dir/clean

example/caller/CMakeFiles/consumer.dir/depend:
	cd /mnt/TestShare/Work/Project/RPC/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/TestShare/Work/Project/RPC /mnt/TestShare/Work/Project/RPC/example/caller /mnt/TestShare/Work/Project/RPC/build /mnt/TestShare/Work/Project/RPC/build/example/caller /mnt/TestShare/Work/Project/RPC/build/example/caller/CMakeFiles/consumer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/caller/CMakeFiles/consumer.dir/depend

