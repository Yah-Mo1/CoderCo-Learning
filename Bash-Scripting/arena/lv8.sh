#!/bin/bash
#Create a script that searches for a specific word or phrase across all .log files in a directory and outputs the names of the files that contain the word or phrase.

# if [ $# -eq 0 ]; then
#     echo "Error: No file provided."
#     exit 1
# fi

if [ ! -d "$1" ]; then
    echo "File not found!"
    exit 1
fi

grep -rl  $1 $2 --include="*.log"

