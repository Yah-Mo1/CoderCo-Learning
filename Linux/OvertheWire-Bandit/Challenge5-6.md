🏁 **Bandit Level 5 -> 6: Finding a Human-Readable File with Specific Properties**

🎯 **Level Objective**  
The password for Bandit Level 6 is stored in a file under the `inhere` directory. The file has the following properties:

- Human-readable
- 1033 bytes in size
- Not executable

You need to identify this file, read its content, and retrieve the password.

🔧 **Commands Required**

- `cd`: Change directory.
- `ls`: List contents of a directory.
- `find`: Search for files within directories.
- `file`: Determine the file type.
- `cat`: Display the contents of a file.
- `ssh`: A tool to securely connect to remote systems.

📚 **Resources**

- [find command on Wikipedia](<https://en.wikipedia.org/wiki/Find_(Unix)>)
- [file command on Wikipedia](<https://en.wikipedia.org/wiki/File_(command)>)
- [How to use SSH on wikiHow](https://www.wikihow.com/Use-SSH)

🧑‍💻 **Step-by-Step Solution**

1️⃣ **Step 1: Change Directory to `inhere`**  
First, navigate to the `inhere` directory where the files are located. Use the `cd` command.

Command:  
cd inhere

2️⃣ **Step 2: Use the `find` Command to Search for the File**  
We need to find a file that is human-readable, not executable, and has a size of exactly 1033 bytes. Use the `find` command with the appropriate flags:

Command:  
find . -size 1033c ! -executable -exec file {} +

This command searches for files with the following conditions:

- `-size 1033c`: The file must be 1033 bytes in size.
- `! -executable`: The file must not be executable.
- `-exec file {} +`: This runs the `file` command on the found files to determine their type.

3️⃣ **Step 3: Identify the Human-Readable File**  
The `find` command will list files that match the criteria. You should see output similar to this:

Output:  
./-file10: ASCII text ./-file15: ASCII text ./-file20: data

Here, files marked as `ASCII text` are human-readable, and one of them will be 1033 bytes in size.

4️⃣ **Step 4: Read the Contents of the File**  
Once you've identified the correct file, use the `cat` command to display its contents.

Command:  
cat ./-file10

Output:  
HWasnPhtq9AVKe0dmk45nxy20cvUa6EG

This is the password for Bandit Level 6.

5️⃣ **Step 5: Log Into Bandit Level 6**  
Now that you have the password, log out of the current session by using `ctrl + D`. Then, use SSH to log into Bandit Level 6.

Command:  
ssh bandit6@bandit.labs.overthewire.org -p 2220

When prompted, enter the password `HWasnPhtq9AVKe0dmk45nxy20cvUa6EG`.

✅ **Solution**  
To log in to Bandit Level 6, use the following command:

ssh bandit6@bandit.labs.overthewire.org -p 2220

When prompted, enter the password `HWasnPhtq9AVKe0dmk45nxy20cvUa6EG`. You will now be logged into Bandit Level 6 and can proceed to the next challenge.

🔍 **Thought Process Behind the Solution**  
1️⃣ **Identify the file properties**: The challenge specifies that the file is human-readable, has a size of 1033 bytes, and is not executable. We need to use `find` to locate files that meet all these conditions.  
2️⃣ **Use the `find` command**: The command `find . -size 1033c ! -executable -exec file {} +` searches for non-executable, human-readable files of the correct size.  
3️⃣ **Read the file**: Once the correct file is identified, use `cat` to display the password.  
4️⃣ **Log into the next level**: With the password in hand, use SSH to log into Bandit Level 6.
