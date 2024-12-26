Passing parameteres to bash scripts:
input values -> parameters
Benefit is you can make your script more dynamic/versatile
Scripts can receive parameters from the command line when executed. This allows you to modify the behaviour of your scripts, making it more flexible.

example of passing a parameter: ./script.sh parameter1 parameter2

Inside the script, you can access these parameters using special variables ($1, $2, $3... etc)

To access all the parameters passed, we use the @ symbol --> $@
