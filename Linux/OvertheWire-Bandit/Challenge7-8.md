🏁 **Bandit Level 7 -> 8: Finding the Password with `grep`**

🎯 **Level Objective**  
The password for Bandit Level 8 is stored in a file called `data.txt` next to the word "millionth." You need to search for the password in this file.

🔧 **Commands Required**

- `grep`: Search for a specific pattern within a file.
- `ssh`: A tool to securely connect to remote systems.

📚 **Resources**

- [grep command on Wikipedia](https://en.wikipedia.org/wiki/Grep)
- [How to use SSH on wikiHow](https://www.wikihow.com/Use-SSH)

🧑‍💻 **Step-by-Step Solution**

1️⃣ **Step 1: Use the `grep` Command to Search for the Password**  
You need to search for the word "millionth" in the `data.txt` file to find the password. To do this, use the following command:

Command:  
grep "millionth" data.txt

2️⃣ **Step 2: View the Output**  
The `grep` command will search through the `data.txt` file and display the line containing the word "millionth," along with the password next to it.

Output:  
millionth dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc

The password for Bandit Level 8 is:  
dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc

3️⃣ **Step 3: Log Into Bandit Level 8**  
Once you have the password, log out of the current session using `ctrl + D`, then use SSH to log into Bandit Level 8.

Command:  
ssh bandit8@bandit.labs.overthewire.org -p 2220
When prompted, enter the password `dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc`.

✅ **Solution**  
To log in to Bandit Level 8, use the following command:

ssh bandit8@bandit.labs.overthewire.org -p 2220

When prompted, enter the password `dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc`. You will now be logged into Bandit Level 8 and can proceed to the next challenge.

🔍 **Thought Process Behind the Solution**  
1️⃣ **Identify the search term**: The password is located next to the word "millionth," so this is the term we need to search for.  
2️⃣ **Use `grep` to find it**: The `grep` command is perfect for searching specific patterns or words in a file.  
3️⃣ **Extract the password**: After running `grep`, the output shows both the search term and the password next to it.  
4️⃣ **Log into the next level**: With the password in hand, use SSH to log into Bandit Level 8.
