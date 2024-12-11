🏁 **Bandit Level 2 -> 3: Accessing a File with Spaces in the Filename**

🎯 **Level Objective**  
For Bandit Level 3, the password is stored in a file called `spaces in this filename` located in the home directory. You need to access and read the content of this file to retrieve the password.

🔧 **Commands Required**

- `cat`: A command to display the contents of a file.
- `ssh`: A tool to securely connect to remote systems.

📚 **Resources**

- [cat command on Wikipedia](<https://en.wikipedia.org/wiki/Cat_(Unix)>)
- [How to use SSH on wikiHow](https://www.wikihow.com/Use-SSH)

🧑‍💻 **Step-by-Step Solution**

1️⃣ **Step 1: List the Contents of the Directory**  
First, verify that the file `spaces in this filename` exists in the home directory. You can list the contents of the directory with the `ls` command.

Command:  
ls

You should see the file `spaces in this filename`.

2️⃣ **Step 2: Read the Content of the File**  
Since the filename contains spaces, you need to enclose it in quotation marks when using the `cat` command.

Command:  
cat "spaces in this filename"

makefile
Copy code

Output:  
MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx

3️⃣ **Step 3: Log Into Bandit Level 3**  
Once you have the password, log out of the current session using `ctrl + D`. Then log into Bandit Level 3 using SSH.

Command:  
ssh bandit3@bandit.labs.overthewire.org -p 2220

When prompted, enter the password `MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx`.

✅ **Solution**  
To log in to Bandit Level 3, use the following command:

ssh bandit3@bandit.labs.overthewire.org -p 2220

When prompted, enter the password `MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx`. You will now be logged into Bandit Level 3 and can proceed to the next challenge.

🔍 **Thought Process Behind the Solution**  
1️⃣ **Identify the file**: The file `spaces in this filename` is located in the home directory.  
2️⃣ **Read the file content**: Use the `cat` command, enclosing the filename in quotation marks to handle the spaces.  
3️⃣ **Log into the next level**: After obtaining the password, use SSH to log into Bandit Level 3 and continue the challenge.
