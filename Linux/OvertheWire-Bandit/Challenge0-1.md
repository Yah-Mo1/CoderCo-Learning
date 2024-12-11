🏁 **Bandit Level 0 -> 1: Retrieving the Password from the `readme` File**

🎯 **Level Objective**  
Now that you're logged into the Bandit server, your goal for Bandit Level 1 is to retrieve the password stored in the `readme` file located in the home directory. You will use the `ls` and `cat` commands to access and view the content of the file. After obtaining the password, you will log out and use it to log into Bandit Level 1.

🔧 **Commands Required**

- `ls`: A command to list the contents of a directory.
- `cat`: A command to display the contents of a file.
- `ssh`: A tool to securely connect to remote systems.
- `ctrl + D`: A keyboard shortcut to log out of the session.

📚 **Resources**

- [ls command on Wikipedia](https://en.wikipedia.org/wiki/Ls)
- [cat command on Wikipedia](<https://en.wikipedia.org/wiki/Cat_(Unix)>)
- [How to use SSH on wikiHow](https://www.wikihow.com/Use-SSH)

🧑‍💻 **Step-by-Step Solution**

1️⃣ **Step 1: List the Contents of the Home Directory**  
Now that you're logged into the server, you're in the home directory. To see what files are available in the current directory, use the `ls` command. This will show you a list of files in the directory, including the `readme` file which contains the password.

Command:  
ls

2️⃣ **Step 2: View the Contents of the `readme` File**  
Once you see that the `readme` file is in the directory, use the `cat` command to display its contents. This will show the password you need to proceed to the next level.

Command:  
cat readme

Output:  
ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If

3️⃣ **Step 3: Log Out of the Bandit0 Session**  
After retrieving the password, you can log out of the current session by pressing `ctrl + D`. This will close your current SSH connection.

4️⃣ **Step 4: Log In to Bandit Level 1**  
Now that you have the password, use it to log into the Bandit Level 1 server via SSH.

Command:  
ssh bandit1@bandit.labs.overthewire.org -p 2220

When prompted for the password, enter the password you retrieved earlier: `ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If`.

✅ **Solution**  
To log in to Bandit Level 1, use the following command:

ssh bandit1@bandit.labs.overthewire.org -p 2220

When prompted, enter the password `ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If`. Once authenticated, you will successfully log into Bandit Level 1 and be ready for the next challenge.

🔍 **Thought Process Behind the Solution**  
1️⃣ **List the directory contents**: Use the `ls` command to identify the `readme` file.  
2️⃣ **Read the file**: Use the `cat` command to view the contents of the `readme` file and retrieve the password.  
3️⃣ **Log out**: Use `ctrl + D` to sign out of the current session.  
4️⃣ **Log in to the next level**: Use SSH to log into Bandit Level 1 with the newly obtained password.

By following these steps, you successfully complete Bandit Level 0 and move on to the next challenge.
