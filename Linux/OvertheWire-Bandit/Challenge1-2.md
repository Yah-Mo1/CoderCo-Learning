🏁 **Bandit Level 1 -> 2: Accessing the Password in a Directory with a Special Name**

🎯 **Level Objective**  
For Bandit Level 2, the password is located within a directory named `-`, which is not the current directory you're in. You will need to navigate to this directory and retrieve the password using the `cat` command. Afterward, you will log out and use the retrieved password to log into Bandit Level 2.

🔧 **Commands Required**

- `pwd`: A command to print the current working directory.
- `ls`: A command to list the contents of a directory.
- `cat`: A command to display the contents of a file.
- `ssh`: A tool to securely connect to remote systems.
- `ctrl + D`: A keyboard shortcut to log out of the session.

📚 **Resources**

- [pwd command on Wikipedia](https://en.wikipedia.org/wiki/Pwd)
- [ls command on Wikipedia](https://en.wikipedia.org/wiki/Ls)
- [cat command on Wikipedia](<https://en.wikipedia.org/wiki/Cat_(Unix)>)
- [How to use SSH on wikiHow](https://www.wikihow.com/Use-SSH)

🧑‍💻 **Step-by-Step Solution**

1️⃣ **Step 1: Check the Current Working Directory**  
You are currently in the `/home/bandit1` directory. To confirm your current location, use the `pwd` command. This will print the directory path you're currently in.

Command:  
pwd

Output:  
/home/bandit1

2️⃣ **Step 2: List the Contents of the Directory**  
Next, use the `ls` command to view the contents of the current directory. You will see that there is a directory named `-`, which is the one containing the password for Bandit Level 2.

Command:  
ls

3️⃣ **Step 3: Access the Password in the `-` Directory**  
To view the password within the `-` directory, use the `cat` command along with `./-` to reference the directory. The `./` is needed to specify the relative path when the directory has a special name, like `-`.

Command:  
cat ./-

Output:  
263JGJPfgU6LtdEvgfWU1XP5yac29mFx

4️⃣ **Step 4: Log Out of the Bandit1 Session**  
Once you have the password, you can log out of your current session by pressing `ctrl + D`. This will end your SSH session.

5️⃣ **Step 5: Log In to Bandit Level 2**  
Now that you have the password for Bandit Level 2, use it to log into the next level via SSH.

Command:  
ssh bandit2@bandit.labs.overthewire.org -p 2220

When prompted for the password, enter `263JGJPfgU6LtdEvgfWU1XP5yac29mFx`.

✅ **Solution**  
To log in to Bandit Level 2, use the following command:

ssh bandit2@bandit.labs.overthewire.org -p 2220

When prompted, enter the password `263JGJPfgU6LtdEvgfWU1XP5yac29mFx`. After successfully authenticating, you will be logged into Bandit Level 2 and ready for the next challenge.

🔍 **Thought Process Behind the Solution**  
1️⃣ **Check current directory**: Use `pwd` to confirm the directory you are in.  
2️⃣ **List the contents**: Use `ls` to see that the directory `-` exists in the current location.  
3️⃣ **Access the special directory**: Use `cat ./-` to display the contents of the `-` directory, which contains the password.  
4️⃣ **Log out**: Use `ctrl + D` to end the current session.  
5️⃣ **Log into the next level**: Use SSH to log into Bandit Level 2 with the newly retrieved password.

By following these steps, you will complete Bandit Level 1 and progress to the next level.
