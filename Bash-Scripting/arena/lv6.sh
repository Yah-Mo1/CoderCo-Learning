#!/bin/bash
# Write a script that accepts a filename as an argument and prints the number of lines in that file. If no filename is provided, display a message saying 'No file provided'.
if [ $# -eq 0 ]; then
    echo "Error: No file provided."
    exit 1

elif [ ! -f "$1" ]; then
    echo "File not found!"
    exit 1

else
    wc -l $1
fi

#Refine