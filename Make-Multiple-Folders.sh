#!/bin/bash
# Make-Multiple-Folders.sh

echo "This Script will make folders with a name and with zero-padded sequential numbering"
echo "like folder-01. An optional suffix after the folder name can be added like 01-Jake"
echo "Enter an integer not including the zero-padded numbers to start the sequential numbering."
echo "Example 0 or 1 or 10... etc."
read startInt
# True if the length of $startInt is non-zero and also not the string "0"
if [[ "$startInt" ]]; then
	echo "Enter an optional folder name that you would like to use to prefix the sequential numbers."
	echo "Enter it now or press enter to skip"
	read folder_name
	echo "Add an optional suffix after the sequential numbers. Enter it now or press enter to skip"
	read suffix
	echo "Enter the Number of folders you would like to make."
	read num_of_folders
	# True if the length of $num_of_folders is non-zero and also not the string "0"
	if [[ -n "$num_of_folders" && "$num_of_folders" != "0" ]]; then
		a=$startInt
		START=1
		# let b=$num_of_folders+1
		# END=b
		END=$num_of_folders
		## save $START, just in case if we need it later ##
		i=$START
		while [[ $i -le $END ]]
		do
			new=$(printf "$folder_name %02d $suffix" "$a") #04 pad with zeros to length of 4
			mkdir "$new"
			let a=a+1
			((i = i + 1))
		done
	else
	    echo "The number of folders must be 1 or more"
	fi
else
	echo "The starting integer must be 0 or more"
fi
