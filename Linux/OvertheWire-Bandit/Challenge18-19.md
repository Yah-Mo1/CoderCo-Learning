🏁 **Bandit Level 18 -> 19: Avoiding Logout by Bypassing .bashrc**

🎯 **Level Objective**  
The password for Bandit Level 19 is stored in a file named `readme` located in the home directory. However, the `.bashrc` file has been modified to log you out immediately upon login.

---

🔧 **Commands Required**

- `ssh -t`: Forces the allocation of a pseudo-terminal, enabling direct command execution.

📚 **Resources**

- [ssh Command Manual](https://man7.org/linux/man-pages/man1/ssh.1.html)

---

🧑‍💻 **Step-by-Step Solution**

1️⃣ **Step 1: Use ssh with -t Flag**

- To bypass the automatic logout caused by the modified `.bashrc`, use the `ssh` command with the `-t` option. This forces a pseudo-terminal allocation and allows you to run a command directly after login.

---

2️⃣ **Step 2: Execute cat Command on Login**

- Run the following command to read the `readme` file immediately after login:
  ```bash
  ssh -t bandit18@bandit.labs.overthewire.org -p 2220 cat readme
  3️⃣ Step 3: Retrieve the Password
  ```

The output will display the contents of the readme file, which contains the password:
cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8
4️⃣ Step 4: Log into Bandit Level 19

Use the password to log in to Bandit Level 19:
ssh bandit19@bandit.labs.overthewire.org -p 2220
🔑 Password for Bandit Level 19:
cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8
✅ Solution
To log into Bandit Level 19, use the following command:
ssh bandit19@bandit.labs.overthewire.org -p 2220
When prompted, enter the password cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8.

🔍 Thought Process Behind the Solution

1️⃣ Understanding the Problem: Realized the .bashrc modification causes immediate logout.
2️⃣ Bypassing the Logout: Used ssh -t to force a command execution before the logout triggers.
3️⃣ Direct File Reading: Executed cat readme upon login to retrieve the password.
