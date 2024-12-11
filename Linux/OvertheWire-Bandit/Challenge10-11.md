🏁 **Bandit Level 10 -> 11: Decoding Base64 Data in `data.txt`**

🎯 **Level Objective**  
The password for Bandit Level 11 is stored in the `data.txt` file, which contains base64 encoded data. We need to decode the content to retrieve the plain text password.

🔧 **Commands Required**

- `base64`: Command used to encode or decode base64 data.
- `ssh`: A tool to securely connect to remote systems.

📚 **Resources**

- [base64 command on Linux](https://man7.org/linux/man-pages/man1/base64.1.html)
- [How to use SSH](https://www.ssh.com/ssh/command/)

🧑‍💻 **Step-by-Step Solution**

1️⃣ **Step 1: Understand the `base64` Command**  
The `base64` command encodes or decodes data in base64 format. Since the password is base64 encoded, we need to decode it. Use the `-d` option to decode the data:

Command:  
man base64

The description for `base64`:
base64 - encode/decode data in base64 format

2️⃣ **Step 2: Use the `base64` Command to Decode the Content**  
Use the `base64` command with the `-d` option to decode the base64 encoded content in the `data.txt` file:

Command:  
base64 -d data.txt

This will output the decoded password in plain text.

3️⃣ **Step 3: Retrieve the Password**  
The decoded output will be the plain password for Bandit Level 11. You will see something like:

Output:  
dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr

The password for Bandit Level 11 is:  
dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr

4️⃣ **Step 4: Log Into Bandit Level 11**  
Once you have the password, log out of the current session using `ctrl + D`, then use SSH to log into Bandit Level 11.

Command:  
ssh bandit11@bandit.labs.overthewire.org -p 2220

When prompted, enter the password `dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr`.

✅ **Solution**  
To log in to Bandit Level 11, use the following command:

ssh bandit11@bandit.labs.overthewire.org -p 2220

When prompted, enter the password `dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr`. You will now be logged into Bandit Level 11 and can proceed to the next challenge.

🔍 **Thought Process Behind the Solution**  
1️⃣ **Identify the task**: The password is encoded in base64, so it needs to be decoded.  
2️⃣ **Use `base64`**: Use the `-d` option to decode the content in `data.txt`.  
3️⃣ **Log into the next level**: With the decoded password, use SSH to log into Bandit Level 11.
