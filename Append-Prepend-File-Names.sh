#!/bin/bash
# Append-Prepend-File-Names.sh
# Rename multiple files by adding a string to the beginning or end

echo "******** WARNING: THIS SCRIPT TARGETS FILES AND FOLDERS ALIKE ********"
echo "Press Ctrl+c to Abort"
echo ""
echo "Enter the phrase to prepend to the beginning. Enter it now or press enter to skip."
read prependage
echo "Enter the phrase to append to the end. Enter it now or press enter to skip."
read appendage

for i in *; do mv -i "$i" "$prependage$i$appendage"; done
# Using the -i flag on the mv command prevents automatically overwriting existing files
