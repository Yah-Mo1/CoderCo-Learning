#!/bin/bash

#Write a script that creates a directory, navigates
#into it, creates a file inside it, writes some text to the file, and then
#displays the contents of the file.

mkdir somedir
cd somedir
touch somefile.txt
echo "Writing some text to a new file" > somefile.txt
cat somefile.txt

