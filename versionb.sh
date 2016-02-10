#!/bin/bash
#removing the path from the file and allocating it to variable
filename=$(basename $1)
#storing the file extension in variable extension
extension="${filename##*.}"
#storing the processed file name into another variable
name="$(basename -s .txt $1)_$(date '+%m-%d-%y').$extension"
#outputs the name to the terminal
echo "File $name has been created"
#generating the file and copying the file into new file
cat $filename > $name
