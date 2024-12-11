🏁 **Bandit Level 19 -> 20: Using a Setuid Binary**

🎯 **Level Objective**  
The password for Bandit Level 20 is stored in `/etc/bandit_pass/bandit20`. However, this file is only accessible by the `bandit20` user. A setuid binary located in the home directory allows temporary privilege escalation to execute commands as `bandit20`.

---

🔧 **Commands Required**

- `ls -l`: To list files with permissions.
- `./bandit20-do`: The setuid binary used for privilege escalation.
- `cat`: To read the password file.

📚 **Resources**

- [Linux File Permissions Guide](https://linux.die.net/man/1/ls)
- [Setuid Explained](https://linux.die.net/man/2/chmod)

---

🧑‍💻 **Step-by-Step Solution**

1️⃣ **Step 1: Inspect the Home Directory**

- After logging in, list files with detailed permissions using:
  ```bash
  ls -l
  2️⃣ Step 2: Identify the Setuid Binary
  ```

Look for a binary file with the -rws permission flag. You’ll see:
-rwsr-x--- 1 bandit20 bandit19 7373 May 7 20:14 bandit20-do
The s in the first permission column means the binary has setuid enabled, allowing it to run as bandit20.
3️⃣ Step 3: Execute the Binary

Run the binary with the cat command to read the password file:
./bandit20-do cat /etc/bandit_pass/bandit20
4️⃣ Step 4: Retrieve the Password

The command will output the password:
0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO
5️⃣ Step 5: Log Into Bandit Level 20

Use the password to log in:
ssh bandit20@bandit.labs.overthewire.org -p 2220
🔑 Password for Bandit Level 20:
0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO
✅ Solution
To log into Bandit Level 20, use the following command:
ssh bandit20@bandit.labs.overthewire.org -p 2220
When prompted, enter the password 0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO.

🔍 Thought Process Behind the Solution

1️⃣ Recognizing the Permissions: Observed the -rws flag, indicating a setuid-enabled binary.
2️⃣ Understanding Privilege Escalation: Realized that executing the binary would run commands as bandit20.
3️⃣ Reading the Password File: Used cat with the binary to access the protected password file.
