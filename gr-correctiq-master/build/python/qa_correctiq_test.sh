#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/project/prefix/gr-correctiq-master/python
export PATH=/home/project/prefix/gr-correctiq-master/build/python:$PATH
export LD_LIBRARY_PATH=/home/project/prefix/gr-correctiq-master/build/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/home/project/prefix/gr-correctiq-master/build/swig:$PYTHONPATH
/usr/bin/python2 /home/project/prefix/gr-correctiq-master/python/qa_correctiq.py 
