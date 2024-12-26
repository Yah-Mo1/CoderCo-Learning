#!/bin/bash

#Conditional Statements - Write a script that checks if a file exists and
#prints a message indicating whether it exists or not. If it exists, the
#script should also check if the file is readable, writable, or executable.


file=$1

if [ -f $file ]; then 
	echo "The file does exist"
	if [ -r $file ]; then
		echo "The file is readable"
	else
		echo "The file is not readable"
	fi
	if [ -w $file ]; then
		echo "The file is writable"
	else
		echo "The file is not writable"
  	fi		 
	if [ -x $file ]; then
		echo "The file is exectuable"
	else 
		echo "The file is not executable"
	fi

else 
	echo "The file does not exist"

fi;
