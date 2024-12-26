Introduction to BASH Scripting

Quick Notes: Introduction to Bash Scripting
What is Bash Scripting?
Bash: A command-line tool to interact with your computer.

Bash Script: A file containing a series of commands you want the computer to execute automatically.

Why Learn It?
Automate tasks: Save time on repetitive actions.

Manage systems: Handle files, software installs, and system configurations.

Boost efficiency: Get more done with less typing!

Getting Started
Shebang (#!):

The first line in your script: #!/bin/bash

It tells the computer to use Bash to run the script.

Run Your Script:

Make it executable: chmod +x your_script.sh (You learn this in the Linux Module)

Run it: ./your_script.sh OR bash your_script.sh (or sh your_script.sh)

Basic Concepts
Variables:

Store values: name="Ahmed"

Use them: echo "Hello, $name"

Comments:

Add explanations with #.
Example: # This line says hello

Single line comments: #
Multi-line comments: --> : '

'
To execute a script from anywhere in the terminal. You can add the script to the path variable
This path tells the shell which directories to search for specific files
Most common directory to place scripts in is /usr/local/bin
mv your_script.sh /usr/local/bin/greet --> renaming file to greet so its easier to run

Then all you need to do is type the name of the file --> for example greet
Conditionals:

Make decisions with if statements.
Example:

if [ $name == "Alice" ]; then echo "Hi Alice!" fi
Loops:

Repeat actions with for or while.
Example:

for i in 1 2 3; do echo "Number $i" done
Functions:

Group commands for reuse.
Example:

greet() { echo "Hello, $1!" } greet "Alice"
User Input:

Get input from users.
Example:

read -p "Enter your name: " name echo "Hello, $name!"
Tips
Start small: Write simple scripts first.

Use meaningful names: This makes your script easier to understand.

Test often: Avoid surprises by running your scripts frequently.

Practice Makes Perfect!
The more you script, the better you get. Try automating small tasks daily.

Bash scripting becomes easier with repetition—keep at it!
