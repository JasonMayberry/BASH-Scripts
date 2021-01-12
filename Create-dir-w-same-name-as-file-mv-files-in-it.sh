#!/bin/bash
# Create-dir-w-same-name-as-file-mv-files-in-it.sh

for file in *; do
  if [[ -f "$file" ]]; then
    mkdir "${file%.*}"
    mv "$file" "${file%.*}"
  fi
done

# Script to create folder with same name as file and move file into folder
# One Liner
# for file in *; do { if [[ -f "$file" ]]; then mkdir "${file%.*}"; mv "$file" "${file%.*}"; fi } done
