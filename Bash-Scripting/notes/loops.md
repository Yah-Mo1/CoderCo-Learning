while Loop in Bash:
The while loop repeatedly executes a block of code as long as a given condition is true. The condition is checked before each iteration, meaning the loop might not run if the condition is false at the beginning.

Syntax:
while [CONDITION]
do # Code to be executed
done`

Example of while loop:
#!/bin/bash

count=1

while [ $count -le 5 ]
do
echo "Count is $count"
((count++)) # Increment the count
done

Explanation:
The condition [ $count -le 5 ] is checked before each loop iteration.
The loop prints the value of count and increments it until count exceeds 5.
Output:
Count is 1
Count is 2
Count is 3
Count is 4
Count is 5

---

for Loop in Bash:
The for loop allows you to iterate over a range of values, a list, or a sequence. It's typically used when you know how many times you need to iterate.

Syntax (range iteration):
for VARIABLE in {START..END}
do # Code to be executed
done

Example of for loop:
#!/bin/bash

for i in {1..5}
do
echo "Iteration number: $i"
done

Explanation:
The for loop iterates from 1 to 5, printing the value of i at each iteration.
Output:
Iteration number: 1
Iteration number: 2
Iteration number: 3
Iteration number: 4
Iteration number: 5

Alternative Syntax for for (using C-style loop):
bash
Copy code

#!/bin/bash

for (( i=1; i<=5; i++ ))
do
echo "Iteration number: $i"
done

This loop functions similarly, with more flexibility in defining the start, end, and increment values.

Summary:
while loop: Repeats as long as the condition is true (check before each iteration).
for loop: Iterates over a set range or list of values (predefined iterations).
