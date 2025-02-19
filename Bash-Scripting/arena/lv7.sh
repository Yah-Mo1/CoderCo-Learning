
#!/bin/bash
#Write a script that sorts all .txt files in a directory by their size, from smallest to largest, and displays the sorted list.
# if [ $# -eq 0 ]; then
#     echo "Error: No file provided."
#     exit 1
# fi

if [ ! -d "$1" ]; then
    echo "File not found!"
    exit 1
fi

find $1 -type f -name "*.txt" -print0 | xargs -0 ls -lShr