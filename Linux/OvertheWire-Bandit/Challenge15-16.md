🏁 **Bandit Level 15 -> 16: Retrieving the Password via SSL/TLS**

🎯 **Level Objective**  
The password for Bandit Level 16 is retrieved by submitting the current password (from Bandit Level 15) to a service running on port 30001 on localhost using SSL/TLS encryption.

🔧 **Commands Required**

- `openssl`: To establish a secure SSL/TLS connection to the service.
- `cat`: To view the password for Bandit Level 15 (already retrieved).

📚 **Resources**

- [OpenSSL Command](https://www.openssl.org/docs/man1.1.1/man1/openssl-s_client.html)

🧑‍💻 **Step-by-Step Solution**

1️⃣ **Step 1: Retrieve the Password for Bandit Level 15**

- First, use the password that you obtained from Bandit Level 15 by reading the file `/etc/bandit_pass/bandit15`:
  ```bash
  cat /etc/bandit_pass/bandit15
  Copy the password for use in the next step.
  2️⃣ Step 2: Connect to the Service Using OpenSSL
  ```

Use the openssl s_client command to connect to port 30001 on localhost with SSL/TLS encryption:
openssl s_client -connect localhost:30001
3️⃣ Step 3: Submit the Password

Once the connection is established, paste the Bandit Level 15 password into the OpenSSL prompt. This will return the password for the next level.
4️⃣ Step 4: Retrieve the Password for Bandit Level 16

After submitting the password, you will receive the password for Bandit Level 16 in the output. The password is:
kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx
5️⃣ Step 5: Log Into Bandit Level 16

Now that you have the password, log into Bandit Level 16 via SSH:
ssh bandit16@bandit.labs.overthewire.org -p 2220
When prompted, enter the password kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx.
✅ Solution
To log in to Bandit Level 16, use the following command:

ssh bandit16@bandit.labs.overthewire.org -p 2220
When prompted, enter the password kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx.

🔍 Thought Process Behind the Solution
1️⃣ OpenSSL Command: We used the openssl s_client command to establish a secure SSL/TLS connection.
2️⃣ Password Submission: After connecting, we submitted the password from Bandit Level 15 to retrieve the password for the next level.
3️⃣ Accessing the Password: The password was provided in the OpenSSL output, which we then used to log into the next level.
