🏁 **Bandit Level 4 -> 5: Finding the Human-Readable File in the `inhere` Directory**

🎯 **Level Objective**  
The password for Bandit Level 5 is stored in the only human-readable file within the `inhere` directory. You need to identify this file, read its content, and retrieve the password.

🔧 **Commands Required**

- `cd`: Change directory.
- `ls`: List contents of a directory.
- `ls -l`: List contents with detailed information.
- `find`: Search for files within directories.
- `file`: Determine the file type.
- `cat`: Display the contents of a file.
- `ssh`: A tool to securely connect to remote systems.
- `reset`: Reset the terminal (in case the terminal becomes messed up).

📚 **Resources**

- [find command on Wikipedia](<https://en.wikipedia.org/wiki/Find_(Unix)>)
- [file command on Wikipedia](<https://en.wikipedia.org/wiki/File_(command)>)
- [How to use SSH on wikiHow](https://www.wikihow.com/Use-SSH)

🧑‍💻 **Step-by-Step Solution**

1️⃣ **Step 1: Change Directory to `inhere`**  
First, navigate to the `inhere` directory where the files are located. Use the `cd` command.

Command:  
cd inhere

2️⃣ **Step 2: List All Files with Details**  
Use the `ls -l` command to list the files in the `inhere` directory with detailed information.

Command:  
ls -l

Output:  
-rwxr-xr-x 1 bandit4 bandit4 12345 Jun 17 14:32 -file01 -rwxr-xr-x 1 bandit4 bandit4 23456 Jun 17 14:33 -file02 -rwxr-xr-x 1 bandit4 bandit4 34567 Jun 17 14:34 -file03 ...

3️⃣ **Step 3: Use the `find` Command to Locate the Human-Readable File**  
The key here is to find the human-readable (non-executable) file. To do this, use the `find` command.

Command:  
find . ! -executable -exec file {} +

This command searches for files that are **not executable** and then uses the `file` command to determine the type of each file. The `+` allows the `find` command to run the `file` command on multiple files in one go.

Output:  
./-file08: data ./-file02: data ./-file09: data ./-file01: data ./-file00: data ./-file05: data ./-file07: ASCII text ./-file03: data ./-file06: data ./-file04: data

Here, the file `-file07` is identified as **ASCII text**, which indicates that it is a human-readable file, unlike the others which are of type `data`.

4️⃣ **Step 4: Display the Contents of the Human-Readable File**  
Use the `cat` command to display the contents of `-file07`, the human-readable file.

Command:  
cat ./-file07

Output:  
4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw

This is the password for Bandit Level 5.

5️⃣ **Step 5: Log Into Bandit Level 5**  
Now that you have the password, log out of the current session by using `ctrl + D`. Then, use SSH to log into Bandit Level 5.

Command:  
ssh bandit5@bandit.labs.overthewire.org -p 2220

When prompted, enter the password `4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw`.

✅ **Solution**  
To log in to Bandit Level 5, use the following command:

ssh bandit5@bandit.labs.overthewire.org -p 2220

When prompted, enter the password `4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw`. You will now be logged into Bandit Level 5 and can proceed to the next challenge.

🔍 **Thought Process Behind the Solution**  
1️⃣ **Identify the file type**: The challenge specifies that the password is in a human-readable file, so we need to identify it among the other non-readable files.  
2️⃣ **Use the `find` command**: This command helps locate non-executable files, and using `file` on them reveals that `-file07` is an ASCII text file, meaning it is human-readable.  
3️⃣ **Read the file**: Once the correct file is identified, use the `cat` command to display the password.  
4️⃣ **Log into the next level**: With the password in hand, use SSH to log into Bandit Level 5.
