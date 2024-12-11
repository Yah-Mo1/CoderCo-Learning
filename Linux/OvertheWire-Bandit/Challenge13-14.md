🏁 **Bandit Level 13 -> 14: Using SSH Key Authentication**

🎯 **Level Objective**  
In this challenge, the password for Bandit Level 14 is stored in the file `/etc/bandit_pass/bandit14`, but can only be read by the `bandit14` user. Instead of a regular password, you will use an SSH private key to log into the next level. The key allows passwordless authentication.

🔧 **Commands Required**

- `ssh -i`: To specify the private key for SSH authentication.
- `cat`: To read the contents of the password file after logging in.

📚 **Resources**

- [SSH Key Authentication](https://man7.org/linux/man-pages/man1/ssh.1.html)
- [SSH -i Option](https://linux.die.net/man/1/ssh)

🧑‍💻 **Step-by-Step Solution**

1️⃣ **Step 1: Understand the Setup**

- The password for Bandit Level 14 is stored in the `/etc/bandit_pass/bandit14` file, which can only be read by the `bandit14` user.
- Instead of using a password, you'll be using a private SSH key to log in.

2️⃣ **Step 2: Log into Bandit Level 14 Using the Private Key**

- To authenticate using the private key, you’ll use the `-i` option with the `ssh` command to specify the key file. The general syntax is:
  ```bash
  ssh -i <private_key_file> bandit14@localhost -p 2220
  Replace <private_key_file> with the actual path to your private SSH key file.
  ```

3️⃣ Step 3: Access the Password File

Once logged in as bandit14, the password is stored in /etc/bandit_pass/bandit14. Use the cat command to view the contents:

cat /etc/bandit_pass/bandit14
4️⃣ Step 4: Retrieve the Password

The password for Bandit Level 14 will be displayed after using the cat command. Copy the password for the next level.
5️⃣ Step 5: Log Into Bandit Level 14

After retrieving the password, use it to log into Bandit Level 14 via SSH:

ssh bandit14@bandit.labs.overthewire.org -p 2220
When prompted, enter the password you've just retrieved.
✅ Solution
To log in to Bandit Level 14, use the following command:

ssh -i <private_key_file> bandit14@localhost -p 2220
Then, use cat to retrieve the password from /etc/bandit_pass/bandit14.

🔍 Thought Process Behind the Solution
1️⃣ SSH Key Authentication: We use the private key to authenticate without a password.
2️⃣ Password Retrieval: After logging in, we retrieve the password from the file that only bandit14 can access.
3️⃣ Accessing the Password File: The password is stored in a specific file, and we read it using cat once logged in.
