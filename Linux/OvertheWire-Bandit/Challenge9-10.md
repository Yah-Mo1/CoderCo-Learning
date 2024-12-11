🏁 **Bandit Level 9 -> 10: Finding the Password Preceded by '=' in `data.txt`**

🎯 **Level Objective**  
The password for Bandit Level 10 is stored in the `data.txt` file, and it is one of the few human-readable strings preceded by several '=' characters.

🔧 **Commands Required**

- `strings`: Print sequences of printable characters from a file.
- `grep`: Filter the output based on a given pattern.
- `ssh`: A tool to securely connect to remote systems.

📚 **Resources**

- [strings command on Linux](https://man7.org/linux/man-pages/man1/strings.1.html)
- [How to use SSH](https://www.ssh.com/ssh/command/)

🧑‍💻 **Step-by-Step Solution**

1️⃣ **Step 1: Understand the `strings` Command**  
The `strings` command is used to extract sequences of printable characters from a file. It is particularly useful for finding human-readable text in binary files. To better understand this command, use the `man` page:

Command:  
man strings

The description for `strings`:
strings - print the sequences of printable characters in files

2️⃣ **Step 2: Use the `strings` Command on `data.txt`**  
Now, use the `strings` command to output all the printable characters in `data.txt`:

Command:  
strings data.txt

This will output a long list of printable characters from the file.

3️⃣ **Step 3: Filter the Output with `grep`**  
The output from `strings` may be too large, so we need to filter it. The password is preceded by several `=` characters, so we can use `grep` to search for this pattern. The `grep` command allows us to filter and display only lines containing the `=` character.

Command:  
strings data.txt | grep "="

4️⃣ **Step 4: View the Password**  
After running the combined command, you'll see a line containing the password preceded by `=` characters. The output should look like this:

Output:  
FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey

The password for Bandit Level 10 is:  
FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey

5️⃣ **Step 5: Log Into Bandit Level 10**  
Once you have the password, log out of the current session using `ctrl + D`, then use SSH to log into Bandit Level 10.

Command:  
ssh bandit10@bandit.labs.overthewire.org -p 2220

When prompted, enter the password `FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey`.

✅ **Solution**  
To log in to Bandit Level 10, use the following command:

ssh bandit10@bandit.labs.overthewire.org -p 2220

When prompted, enter the password `FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey`. You will now be logged into Bandit Level 10 and can proceed to the next challenge.

🔍 **Thought Process Behind the Solution**  
1️⃣ **Identify the task**: The goal is to find a human-readable string preceded by '=' characters in the file.  
2️⃣ **Use `strings`**: Extract all printable characters from the file.  
3️⃣ **Filter with `grep`**: Use `grep` to search for lines containing '=' to isolate the password.  
4️⃣ **Log into the next level**: With the password, use SSH to log into Bandit Level 10.
