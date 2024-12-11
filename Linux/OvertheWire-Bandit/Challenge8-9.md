🏁 **Bandit Level 8 -> 9: Finding the Unique Line in `data.txt`**

🎯 **Level Objective**  
The password for Bandit Level 9 is stored in the file `data.txt` and is the only line of text that occurs only once. You need to find this unique line.

🔧 **Commands Required**

- `uniq`: Filter adjacent matching lines.
- `sort`: Sort lines of text.
- `ssh`: A tool to securely connect to remote systems.

📚 **Resources**

- [uniq command on Wikipedia](https://en.wikipedia.org/wiki/Uniq)
- [How to use SSH on wikiHow](https://www.wikihow.com/Use-SSH)

🧑‍💻 **Step-by-Step Solution**

1️⃣ **Step 1: Understand the `uniq` Command**  
The `uniq` command is used to filter out repeated lines in a file. The `-u` option prints only lines that occur exactly once.

To better understand the command, you can check its manual page by running:

Command:  
man uniq

The relevant description:  
---> uniq – report or filter out repeated lines in a file
-u, --unique Only print unique lines.

2️⃣ **Step 2: Sort the Data**  
Before using `uniq`, we need to sort the file. This is important because `uniq` only removes adjacent duplicates. To sort the `data.txt` file, use the `sort` command:

Command:  
sort data.txt

3️⃣ **Step 3: Combine the Commands**  
Now, we can use both `sort` and `uniq` together by piping the output of `sort` into `uniq -u`. This will first sort the lines and then filter out any lines that occur more than once, leaving only the unique line.

Command:  
sort data.txt | uniq -u

4️⃣ **Step 4: View the Output**  
The output of the combined command will display the unique line in the `data.txt` file, which contains the password:

Output:  
4CKMh1JI91bUIZZPXDqGanal4xvAg0JM

The password for Bandit Level 9 is:  
4CKMh1JI91bUIZZPXDqGanal4xvAg0JM

5️⃣ **Step 5: Log Into Bandit Level 9**  
Once you have the password, log out of the current session using `ctrl + D`, then use SSH to log into Bandit Level 9.

Command:  
ssh bandit9@bandit.labs.overthewire.org -p 2220

When prompted, enter the password `4CKMh1JI91bUIZZPXDqGanal4xvAg0JM`.

✅ **Solution**  
To log in to Bandit Level 9, use the following command:

ssh bandit9@bandit.labs.overthewire.org -p 2220

When prompted, enter the password `4CKMh1JI91bUIZZPXDqGanal4xvAg0JM`. You will now be logged into Bandit Level 9 and can proceed to the next challenge.

🔍 **Thought Process Behind the Solution**  
1️⃣ **Identify the task**: The goal is to find the line that appears only once in the file.  
2️⃣ **Sort the file**: Sorting the file ensures that adjacent duplicate lines are placed next to each other, which makes it easier for `uniq` to filter out all but the unique lines.  
3️⃣ **Use `uniq -u`**: The `-u` option ensures that only the unique line is printed.  
4️⃣ **Log into the next level**: With the password in hand, use SSH to log into Bandit Level 9.
