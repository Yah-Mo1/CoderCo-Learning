🏁 **Bandit Level 3 -> 4: Accessing a Hidden File in the `inhere` Directory**

🎯 **Level Objective**  
The password for Bandit Level 4 is stored in a hidden file within the `inhere` directory. To retrieve it, you need to access this directory, identify the hidden file, and read its content.

🔧 **Commands Required**

- `cd`: Change directory.
- `ls`: List contents of a directory.
- `ls -a`: List all contents, including hidden files.
- `ls -la`: List all contents with detailed information.
- `cat`: Display the contents of a file.
- `ssh`: A tool to securely connect to remote systems.

📚 **Resources**

- [ls command on Wikipedia](<https://en.wikipedia.org/wiki/Ls_(Unix)>)
- [cat command on Wikipedia](<https://en.wikipedia.org/wiki/Cat_(Unix)>)
- [How to use SSH on wikiHow](https://www.wikihow.com/Use-SSH)

🧑‍💻 **Step-by-Step Solution**

1️⃣ **Step 1: Check Current Directory**  
First, check your current directory with the `pwd` command.  
The output should be `/home/bandit3`, confirming that you are in the correct location.

Command:  
pwd

Output:  
/home/bandit3

2️⃣ **Step 2: Navigate to the `inhere` Directory**  
Use the `cd` command to change into the `inhere` directory where the password is stored.

Command:  
cd inhere

3️⃣ **Step 3: List All Files, Including Hidden Ones**  
To view all files in the `inhere` directory, including hidden files, use the `ls -a` command.

Command:  
ls -a

makefile
Copy code

Output:  
. .. ...Hiding-From-You

vbnet
Copy code

Here, you can see the hidden file `...Hiding-From-You`.

4️⃣ **Step 4: List Detailed Information**  
Use `ls -la` to list all files with more detailed information, such as file permissions and types. This can help confirm that `...Hiding-From-You` is indeed a file and not a directory.

Command:  
ls -la

Output:  
. .. ...Hiding-From-You

The file `...Hiding-From-You` is confirmed to be a regular file.

5️⃣ **Step 5: Read the Content of the Hidden File**  
Now, use the `cat` command to display the contents of the hidden file `...Hiding-From-You`.

Command:  
cat ...Hiding-From-You

Output:  
2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ

6️⃣ **Step 6: Log Into Bandit Level 4**  
Once you have the password, log out of the current session using `ctrl + D`. Then log into Bandit Level 4 using SSH.

Command:  
ssh bandit4@bandit.labs.overthewire.org -p 2220

When prompted, enter the password `2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ`.

✅ **Solution**  
To log in to Bandit Level 4, use the following command:

ssh bandit4@bandit.labs.overthewire.org -p 2220

When prompted, enter the password `2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ`. You will now be logged into Bandit Level 4 and can proceed to the next challenge.

🔍 **Thought Process Behind the Solution**  
1️⃣ **Identify the location of the password**: The password is stored in a hidden file in the `inhere` directory.  
2️⃣ **Navigate and list hidden files**: Use the `ls -a` command to reveal hidden files and `ls -la` for detailed information about the files.  
3️⃣ **Read the hidden file**: Once identified, use `cat` to print the content of the file, which contains the password.  
4️⃣ **Log into the next level**: After obtaining the password, use SSH t
