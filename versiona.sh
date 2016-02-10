#!/bin/bash
filename=$1
name="$(date '+%y-%m-%d')_$filename"
#creating the file using touch command
touch $name
echo "File $name has been created"
#copying the previous file into new file
cat $filename > $name
