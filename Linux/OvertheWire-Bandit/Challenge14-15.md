🏁 **Bandit Level 14 -> 15: Retrieving the Password via Telnet**

🎯 **Level Objective**  
The password for Bandit Level 15 is retrieved by submitting the current password (from Bandit Level 14) to a service running on port 30000 on localhost.

🔧 **Commands Required**

- `telnet`: To communicate with the service running on port 30000.
- `cat`: To view the password for Bandit Level 14 (already retrieved).

📚 **Resources**

- [Telnet Command](https://man7.org/linux/man-pages/man1/telnet.1.html)

🧑‍💻 **Step-by-Step Solution**

1️⃣ **Step 1: Retrieve the Password for Bandit Level 14**

- First, use the password that you obtained from Bandit Level 14 by reading the file `/etc/bandit_pass/bandit14`:
  ```bash
  cat /etc/bandit_pass/bandit14
  Copy the password for use in the next step.
  2️⃣ Step 2: Connect to the Service Using Telnet
  ```

Use the telnet command to connect to port 30000 on localhost:

telnet localhost 30000
3️⃣ Step 3: Submit the Password

Once the connection is established, paste the Bandit Level 14 password into the telnet prompt. This will return the password for the next level.
4️⃣ Step 4: Retrieve the Password for Bandit Level 15

After submitting the password, you will receive the password for Bandit Level 15 in the output. The password is:
8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo
5️⃣ Step 5: Log Into Bandit Level 15

Now that you have the password, log into Bandit Level 15 via SSH:
ssh bandit15@bandit.labs.overthewire.org -p 2220
When prompted, enter the password 8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo.
✅ Solution
To log in to Bandit Level 15, use the following command:
ssh bandit15@bandit.labs.overthewire.org -p 2220
When prompted, enter the password 8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo.

🔍 Thought Process Behind the Solution
1️⃣ Telnet Command: We used telnet to connect to a service running on port 30000.
2️⃣ Password Submission: After connecting, we submitted the password from Bandit Level 14 to retrieve the password for the next level.
3️⃣ Accessing the Password: The password was provided in the telnet output, which we then used to log into the next level.
