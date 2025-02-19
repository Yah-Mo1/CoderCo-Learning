#!/bin/bash

#Mission: Write a script that checks if a file named hero.txt exists in the Arena directory. 
# If it does, print Hero found!; otherwise, print Hero missing!.

file=~/Arena/hero.txt

if [ -f "$file" ]; then

    echo "Hero found!"

else
    echo "Hero missing!"
fi
      