# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/project/prefix/gr-correctiq-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/project/prefix/gr-correctiq-master/build

# Utility rule file for correctiq_swig_swig_doc.

# Include the progress variables for this target.
include swig/CMakeFiles/correctiq_swig_swig_doc.dir/progress.make

swig/CMakeFiles/correctiq_swig_swig_doc: swig/correctiq_swig_doc.i


swig/correctiq_swig_doc.i: swig/correctiq_swig_doc_swig_docs/xml/index.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/project/prefix/gr-correctiq-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating python docstrings for correctiq_swig_doc"
	cd /home/project/prefix/gr-correctiq-master/docs/doxygen && /usr/bin/python2 -B /home/project/prefix/gr-correctiq-master/docs/doxygen/swig_doc.py /home/project/prefix/gr-correctiq-master/build/swig/correctiq_swig_doc_swig_docs/xml /home/project/prefix/gr-correctiq-master/build/swig/correctiq_swig_doc.i

swig/correctiq_swig_doc_swig_docs/xml/index.xml: swig/_correctiq_swig_doc_tag
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/project/prefix/gr-correctiq-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating doxygen xml for correctiq_swig_doc docs"
	cd /home/project/prefix/gr-correctiq-master/build/swig && ./_correctiq_swig_doc_tag
	cd /home/project/prefix/gr-correctiq-master/build/swig && /usr/bin/doxygen /home/project/prefix/gr-correctiq-master/build/swig/correctiq_swig_doc_swig_docs/Doxyfile

correctiq_swig_swig_doc: swig/CMakeFiles/correctiq_swig_swig_doc
correctiq_swig_swig_doc: swig/correctiq_swig_doc.i
correctiq_swig_swig_doc: swig/correctiq_swig_doc_swig_docs/xml/index.xml
correctiq_swig_swig_doc: swig/CMakeFiles/correctiq_swig_swig_doc.dir/build.make

.PHONY : correctiq_swig_swig_doc

# Rule to build all files generated by this target.
swig/CMakeFiles/correctiq_swig_swig_doc.dir/build: correctiq_swig_swig_doc

.PHONY : swig/CMakeFiles/correctiq_swig_swig_doc.dir/build

swig/CMakeFiles/correctiq_swig_swig_doc.dir/clean:
	cd /home/project/prefix/gr-correctiq-master/build/swig && $(CMAKE_COMMAND) -P CMakeFiles/correctiq_swig_swig_doc.dir/cmake_clean.cmake
.PHONY : swig/CMakeFiles/correctiq_swig_swig_doc.dir/clean

swig/CMakeFiles/correctiq_swig_swig_doc.dir/depend:
	cd /home/project/prefix/gr-correctiq-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/project/prefix/gr-correctiq-master /home/project/prefix/gr-correctiq-master/swig /home/project/prefix/gr-correctiq-master/build /home/project/prefix/gr-correctiq-master/build/swig /home/project/prefix/gr-correctiq-master/build/swig/CMakeFiles/correctiq_swig_swig_doc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : swig/CMakeFiles/correctiq_swig_swig_doc.dir/depend

