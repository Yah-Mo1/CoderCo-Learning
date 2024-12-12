Linux Overview:
Standard Streams:

stdin (Standard Input): Default input stream, typically the keyboard. Command examples: cat < file.txt.
stdout (Standard Output): Default output stream, usually the terminal. Command examples: echo "Hello" > output.txt.
stderr (Standard Error): Used for error messages, also directed to the terminal by default. Command examples: ls non_existing_file 2> error.txt.

Environment Variables:

Key-value pairs that define system or user-specific settings. Example: $PATH, $HOME.
Commands:
View: echo $VARIABLE_NAME
Set temporarily: export VAR_NAME=value
Set permanently: Add to ~/.bashrc or ~/.bash_profile.

Aliases:

Shortcuts for longer commands.
Example:
Create: alias ll='ls -la'
View all: alias
Make permanent: Add to ~/.bashrc.
