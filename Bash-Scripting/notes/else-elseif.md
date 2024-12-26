In Bash scripting, else and elif (else if) are used to create conditional branches in your code. These statements allow you to execute different blocks of code based on specific conditions.

if: Tests a condition, and if it's true, the block of code following it is executed.
elif: Stands for "else if," and it allows you to check another condition if the previous if (or elif) conditions were false.
else: Provides a default block of code that runs when all preceding if or elif conditions fail.

#!/bin/bash

number=10

if [ $number -gt 20 ]; then
echo "Number is greater than 20"
elif [ $number -gt 10 ]; then
echo "Number is greater than 10 but less than or equal to 20"
else
echo "Number is 10 or less"
fi

Explanation:
The script checks if number is greater than 20 using the if condition.
If the first condition fails, it checks if number is greater than 10 with elif.
If both conditions fail, it defaults to the else block.
In this case, the output will be:

csharp
Copy code
Number is 10 or less
This is because number=10, and both the if and elif conditions are false.
