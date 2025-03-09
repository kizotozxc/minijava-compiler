# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.28.3/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.28.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/motorolla/mipt/compl/minijava-compiler

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/motorolla/mipt/compl/minijava-compiler

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target test
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running tests..."
	/opt/homebrew/Cellar/cmake/3.28.3/bin/ctest --force-new-ctest-process $(ARGS)
.PHONY : test

# Special rule for the target test
test/fast: test
.PHONY : test/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake cache editor..."
	/opt/homebrew/Cellar/cmake/3.28.3/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake to regenerate build system..."
	/opt/homebrew/Cellar/cmake/3.28.3/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/motorolla/mipt/compl/minijava-compiler/CMakeFiles /Users/motorolla/mipt/compl/minijava-compiler//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/motorolla/mipt/compl/minijava-compiler/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named minijava_compiler

# Build rule for target.
minijava_compiler: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 minijava_compiler
.PHONY : minijava_compiler

# fast build rule for target.
minijava_compiler/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/minijava_compiler.dir/build.make CMakeFiles/minijava_compiler.dir/build
.PHONY : minijava_compiler/fast

#=============================================================================
# Target rules for targets named minijava_lib

# Build rule for target.
minijava_lib: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 minijava_lib
.PHONY : minijava_lib

# fast build rule for target.
minijava_lib/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/minijava_lib.dir/build.make CMakeFiles/minijava_lib.dir/build
.PHONY : minijava_lib/fast

#=============================================================================
# Target rules for targets named lexer_test

# Build rule for target.
lexer_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 lexer_test
.PHONY : lexer_test

# fast build rule for target.
lexer_test/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lexer_test.dir/build.make CMakeFiles/lexer_test.dir/build
.PHONY : lexer_test/fast

#=============================================================================
# Target rules for targets named parser_test

# Build rule for target.
parser_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 parser_test
.PHONY : parser_test

# fast build rule for target.
parser_test/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/parser_test.dir/build.make CMakeFiles/parser_test.dir/build
.PHONY : parser_test/fast

src/lexer.o: src/lexer.cpp.o
.PHONY : src/lexer.o

# target to build an object file
src/lexer.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/minijava_compiler.dir/build.make CMakeFiles/minijava_compiler.dir/src/lexer.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/minijava_lib.dir/build.make CMakeFiles/minijava_lib.dir/src/lexer.cpp.o
.PHONY : src/lexer.cpp.o

src/lexer.i: src/lexer.cpp.i
.PHONY : src/lexer.i

# target to preprocess a source file
src/lexer.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/minijava_compiler.dir/build.make CMakeFiles/minijava_compiler.dir/src/lexer.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/minijava_lib.dir/build.make CMakeFiles/minijava_lib.dir/src/lexer.cpp.i
.PHONY : src/lexer.cpp.i

src/lexer.s: src/lexer.cpp.s
.PHONY : src/lexer.s

# target to generate assembly for a file
src/lexer.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/minijava_compiler.dir/build.make CMakeFiles/minijava_compiler.dir/src/lexer.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/minijava_lib.dir/build.make CMakeFiles/minijava_lib.dir/src/lexer.cpp.s
.PHONY : src/lexer.cpp.s

src/main.o: src/main.cpp.o
.PHONY : src/main.o

# target to build an object file
src/main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/minijava_compiler.dir/build.make CMakeFiles/minijava_compiler.dir/src/main.cpp.o
.PHONY : src/main.cpp.o

src/main.i: src/main.cpp.i
.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/minijava_compiler.dir/build.make CMakeFiles/minijava_compiler.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s
.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/minijava_compiler.dir/build.make CMakeFiles/minijava_compiler.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

src/parser.o: src/parser.cpp.o
.PHONY : src/parser.o

# target to build an object file
src/parser.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/minijava_compiler.dir/build.make CMakeFiles/minijava_compiler.dir/src/parser.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/minijava_lib.dir/build.make CMakeFiles/minijava_lib.dir/src/parser.cpp.o
.PHONY : src/parser.cpp.o

src/parser.i: src/parser.cpp.i
.PHONY : src/parser.i

# target to preprocess a source file
src/parser.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/minijava_compiler.dir/build.make CMakeFiles/minijava_compiler.dir/src/parser.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/minijava_lib.dir/build.make CMakeFiles/minijava_lib.dir/src/parser.cpp.i
.PHONY : src/parser.cpp.i

src/parser.s: src/parser.cpp.s
.PHONY : src/parser.s

# target to generate assembly for a file
src/parser.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/minijava_compiler.dir/build.make CMakeFiles/minijava_compiler.dir/src/parser.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/minijava_lib.dir/build.make CMakeFiles/minijava_lib.dir/src/parser.cpp.s
.PHONY : src/parser.cpp.s

tests/lexer_test.o: tests/lexer_test.cpp.o
.PHONY : tests/lexer_test.o

# target to build an object file
tests/lexer_test.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lexer_test.dir/build.make CMakeFiles/lexer_test.dir/tests/lexer_test.cpp.o
.PHONY : tests/lexer_test.cpp.o

tests/lexer_test.i: tests/lexer_test.cpp.i
.PHONY : tests/lexer_test.i

# target to preprocess a source file
tests/lexer_test.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lexer_test.dir/build.make CMakeFiles/lexer_test.dir/tests/lexer_test.cpp.i
.PHONY : tests/lexer_test.cpp.i

tests/lexer_test.s: tests/lexer_test.cpp.s
.PHONY : tests/lexer_test.s

# target to generate assembly for a file
tests/lexer_test.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lexer_test.dir/build.make CMakeFiles/lexer_test.dir/tests/lexer_test.cpp.s
.PHONY : tests/lexer_test.cpp.s

tests/main_test.o: tests/main_test.cpp.o
.PHONY : tests/main_test.o

# target to build an object file
tests/main_test.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lexer_test.dir/build.make CMakeFiles/lexer_test.dir/tests/main_test.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/parser_test.dir/build.make CMakeFiles/parser_test.dir/tests/main_test.cpp.o
.PHONY : tests/main_test.cpp.o

tests/main_test.i: tests/main_test.cpp.i
.PHONY : tests/main_test.i

# target to preprocess a source file
tests/main_test.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lexer_test.dir/build.make CMakeFiles/lexer_test.dir/tests/main_test.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/parser_test.dir/build.make CMakeFiles/parser_test.dir/tests/main_test.cpp.i
.PHONY : tests/main_test.cpp.i

tests/main_test.s: tests/main_test.cpp.s
.PHONY : tests/main_test.s

# target to generate assembly for a file
tests/main_test.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lexer_test.dir/build.make CMakeFiles/lexer_test.dir/tests/main_test.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/parser_test.dir/build.make CMakeFiles/parser_test.dir/tests/main_test.cpp.s
.PHONY : tests/main_test.cpp.s

tests/parser_test.o: tests/parser_test.cpp.o
.PHONY : tests/parser_test.o

# target to build an object file
tests/parser_test.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/parser_test.dir/build.make CMakeFiles/parser_test.dir/tests/parser_test.cpp.o
.PHONY : tests/parser_test.cpp.o

tests/parser_test.i: tests/parser_test.cpp.i
.PHONY : tests/parser_test.i

# target to preprocess a source file
tests/parser_test.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/parser_test.dir/build.make CMakeFiles/parser_test.dir/tests/parser_test.cpp.i
.PHONY : tests/parser_test.cpp.i

tests/parser_test.s: tests/parser_test.cpp.s
.PHONY : tests/parser_test.s

# target to generate assembly for a file
tests/parser_test.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/parser_test.dir/build.make CMakeFiles/parser_test.dir/tests/parser_test.cpp.s
.PHONY : tests/parser_test.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... test"
	@echo "... lexer_test"
	@echo "... minijava_compiler"
	@echo "... minijava_lib"
	@echo "... parser_test"
	@echo "... src/lexer.o"
	@echo "... src/lexer.i"
	@echo "... src/lexer.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
	@echo "... src/parser.o"
	@echo "... src/parser.i"
	@echo "... src/parser.s"
	@echo "... tests/lexer_test.o"
	@echo "... tests/lexer_test.i"
	@echo "... tests/lexer_test.s"
	@echo "... tests/main_test.o"
	@echo "... tests/main_test.i"
	@echo "... tests/main_test.s"
	@echo "... tests/parser_test.o"
	@echo "... tests/parser_test.i"
	@echo "... tests/parser_test.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

