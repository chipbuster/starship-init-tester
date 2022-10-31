#!/usr/bin/env bash

if [[ $2 == "" ]]; then
    echo "Usage: $0 <test-directory> <starship-binary>"
    exit 1
fi

testdir="$1"
if [[ $testdir == "" ]]; then
    testdir="$TMPDIR/starship_links"
fi
if [[ $testdir == "" ]]; then
    testdir="/tmp/starship_links"
fi

mkdir -p "$testdir"

# We want to test several different scenarios here. We probably want a combination
# of all of the following scenarios
#  
#   - binary is a normal file
#   - binary is a symlink to the actual executable
#   
#   - binary directory is a normal directory
#   - binary directory is a symlink to another directory
#   - binary directory is a normal directory but there are symlinks in the path
#
#   - starship is invoked as a plain binary name (expected to be PATH-searched)
#   - starship is invoked with a relative path-to-binary
#   - starship is invoked with an absolute path-to-binary
#
# In all cases, we also want to check what happens when the symlink changes
# targets while bash is executing.

