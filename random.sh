#!/bin/bash
echo "Random word is"
#path of the file words file
words="/usr/share/dict/words"
#counting total number of lines/words
num=$(wc -l < ${words})
#taking the modulus of the random number with total number of elements
let x=${RANDOM}%${num}+1
sed -n ${x}p ${words}
