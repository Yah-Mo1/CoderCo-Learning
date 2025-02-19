#!/bin/bash

# Step 1: Create directories
mkdir -p Arena_Boss Victory_Archive

# Step 2: Create 5 text files inside the Arena_Boss directory
cd Arena_Boss
touch file1.txt file2.txt file3.txt file4.txt file5.txt

# Step 3: Generate a random number of lines (between 10 and 20) in each file
for file in file1.txt file2.txt file3.txt file4.txt file5.txt
do
    num_lines=$((RANDOM % 11 + 10))  # Random number between 10 and 20
    for ((i=1; i<=num_lines; i++))
    do
        echo "Line $i" >> "$file"
    done
done

# Step 4: Sort files by their size and display the list
ls -lShr

# Step 5: Check if any of the files contain the word 'Victory' and move them to Victory_Archive if found
for file in file1.txt file2.txt file3.txt file4.txt file5.txt
do
    if grep -iq "Victory" "$file"; then
        mv "$file" ../Victory_Archive/
        echo "Moved $file to Victory_Archive"
    fi
done
