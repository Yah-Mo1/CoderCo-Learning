#!/bin/bash
# Test this one out 
mkdir Battlefield Archive
cd Battlefield

touch knight.txt sorcerer.txt rogue.txt

if test -f ~/Battlefield/knight.txt; then
  echo "File exists."
  mv knight.txt ~/Archive
fi

ls Battlefield
ls Archive
#Refine