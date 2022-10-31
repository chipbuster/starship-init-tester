#!/usr/bin/env bash

# Taken from https://stackoverflow.com/a/246128/2914377 under CC BY SA 4.0
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [[ $1 == "" ]]; then
    echo "Usage: $0 <starship-binary> [test-directory]"
    exit 1
fi

testdir="$2"
if [[ $testdir == "" ]]; then
    testdir="$TMPDIR/starship_links"
fi
if [[ $testdir == "" ]]; then
    testdir="/tmp/starship_links"
fi

rm -rf "$testdir"
mkdir -p "$testdir"

bash "$SCRIPT_DIR/test_scripts/setup_tests.sh" "$testdir" "$1"