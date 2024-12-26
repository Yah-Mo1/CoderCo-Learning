#!/bin/bash

copyDirectory="/Users/yourusername/copyDirectory"
textDirectory="/Users/yourusername/textDirectory"

# Ensure the backup directory exists
if [ ! -d "$copyDirectory" ]; then
    echo "Backup directory $copyDirectory does not exist. Creating it..."
    mkdir -p "$copyDirectory"
fi

# Verify the source directory exists
if [ ! -d "$textDirectory" ]; then
    echo "Source directory $textDirectory does not exist."
    exit 1
fi

# Change to the source directory
cd "$textDirectory" || exit

# Copy all .txt files to the backup directory
for i in *.txt; do
    if [ -e "$i" ]; then  # Check if any .txt files exist
        cp "$i" "$copyDirectory"
        echo "Copied $i to $copyDirectory"
    else
        echo "No .txt files found in $textDirectory"
        break
    fi
done
