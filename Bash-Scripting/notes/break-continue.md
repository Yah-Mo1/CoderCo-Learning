break and continue Statements in Bash Scripting
In Bash scripting, break and continue are control flow statements used to modify the flow of loops (for, while, and until loops).

1. break Statement:
   The break statement is used to exit from a loop before it completes all iterations. When break is encountered, the loop terminates immediately, and the program continues executing the code after the loop.

Syntax: break

Example:
#!/bin/bash

for i in {1..5}
do
if [ $i -eq 3 ]; then
echo "Breaking the loop at i=$i"
        break
    fi
    echo "i=$i"
done

echo "Loop has ended"

Explanation:
The loop will iterate from 1 to 5.
When i equals 3, the break statement will execute, and the loop will exit.
The message "Breaking the loop at i=3" will be printed, and the loop will terminate after that.

Output:
i=1
i=2
Breaking the loop at i=3
Loop has ended

2. continue Statement:
   The continue statement is used to skip the current iteration of the loop and proceed to the next iteration. It doesn't terminate the loop but rather skips the remaining part of the current loop cycle.

Syntax:
continue

Example:
#!/bin/bash

for i in {1..5}
do
if [ $i -eq 3 ]; then
echo "Skipping iteration at i=$i"
        continue
    fi
    echo "i=$i"
done

echo "Loop has ended"

Explanation:
The loop will iterate from 1 to 5.
When i equals 3, the continue statement will execute, which means it will skip the echo "i=$i" command for that iteration and move to the next one.
The message "Skipping iteration at i=3" will be printed, but the loop continues without printing i=3.

Output:
i=1
i=2
Skipping iteration at i=3
i=4
i=5
Loop has ended

Key Differences:
break: Exits the loop completely, no further iterations are executed.
continue: Skips the current iteration and moves to the next one, allowing the loop to continue running.
