#!/bin/bash

testdir="$1"
starship="$2"

mkdir -p "$testdir/1/2/3"
cp "$starship" "$testdir/1/2/3/starship"

ln -s "$testdir/1/2/3" "$testdir/link_to_3"
ln -s "$testdir/1/2/3/starship" "$testdir/1/2/3/starship_link"
ln -s "$testdir/1/2" "$testdir/1/link_to_2"

mkdir -p "$testdir/alt_path"
cp "$starship" "$testdir/alt_path/starship"
ln -s "$testdir/alt_path/starship" "$testdir/alt_path/starship_link"