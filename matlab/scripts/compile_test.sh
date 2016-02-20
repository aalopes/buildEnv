#!/bin/bash

# Compiles a Matlab test script into a stand-alone executable,
# so that we do not need any licenses to run it.
# Please run in the right folder, I haven't bothered to make
# this independent of the run folder
#
# Before running this file, it might be necessary to run the
# generate_prototype.m script to generate the necessary thunk file.
#
# 2015 Alexandre Lopes

# Files to add to Matlab archive, and which are not automatically included,
# like thunk files (when using C libraries)

ARCHIVE_FILES="lib_linux_test_thunk_glnxa64.so"

if [ "x$1" = "x" ]; then
  echo Usage:
  echo    $0 \<script_to_compile\>
else
    # create temp folder
    mkdir -p mat_tmp

    # cp all functions to this folder, since every m file should be in
    # the same folder
    cp ../lib/* mat_tmp/

    # cp our script there
    cp $1 mat_tmp

    # if something else needs to be copied, do it here
    
    cd mat_tmp

    # build executable
    echo "Compiling ..."
    if [ -z $ARCHIVE_FILES ]; then
        mcc -mv $1 
    else 
        mcc -mv $1 -a $ARCHIVE_FILES 
    fi

    # mv executable to executable folder
    FILE=$1
    FILE=${FILE::-2}

    # make dir if it doesn't exist
    mkdir -p ../../executables 
    mv $FILE ../../executables

    # go back
    cd .. 

    # rm tmp
    rm -r mat_tmp
fi
