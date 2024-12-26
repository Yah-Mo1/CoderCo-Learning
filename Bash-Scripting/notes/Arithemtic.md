Arithmetic expansion:
Performing mathematical calculations and evauluate expressions using $(())
Example:
num1 = 54
num2 = 10

result = $((num1 + num2))
echo $result --> 64

Example for script script.sh
We can combine arithemtic expansion with parameters:
num1 = "$1"
num2 = "$2"

result = $((num1 + num2))
then run the script with parameters --> ./script.sh 5 10
echo $result --> 15
