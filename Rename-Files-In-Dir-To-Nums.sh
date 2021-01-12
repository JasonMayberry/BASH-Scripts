#!/bin/bash
# Rename-Files-In-Dir-To-Nums.sh

echo "******** WARNING: THIS SCRIPT TARGETS FILES AND FOLDERS ALIKE ********"
echo "Press Ctrl+c to Abort"
echo ""
echo "This Script will rename all files of a specified file type with a zero-padded sequential "
echo "number like 0001.jpg. An optional prefix before file type can be added like 0001-Jake.jpg"
echo "Enter an integer not including the zero-padded numbers to start the sequential numbering."
echo "Example 0 or 1 or 10... etc."
read startInt
if [[ "$startInt" ]]; then
	echo "Enter the file type that you would like to target. Example: .jpg .png .m4v .mp4 .pdf"
	read file_type
	echo "Add an optional prefix before file type. Enter it now or press enter to skip"
	read prefix
	a=$startInt
	for i in *"$file_type"; do
		new=$(printf "%04d$prefix$file_type" "$a") #04 pad with zeros to length of 4
		mv -i -- "$i" "$new"
		let a=a+1
	done
else
    echo "The starting integer must be 0 or more"
fi
# The MIME file type for the input and output must match
# Using the -i flag on the mv command prevents automatically overwriting existing files
