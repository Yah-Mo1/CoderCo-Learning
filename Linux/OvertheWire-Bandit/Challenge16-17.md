🏁 **Bandit Level 16 -> 17: Finding the Correct Port and Retrieving the Private Key**

🎯 **Level Objective**  
The credentials for Bandit Level 17 are stored on a service running on a port between 31000 and 32000 on localhost. You need to:

1. Identify which ports are open.
2. Determine which of these ports use SSL/TLS.
3. Submit the Bandit Level 16 password to retrieve a private SSH key.

🔧 **Commands Required**

- `nmap`: To scan the ports and identify which ones are open.
- `openssl s_client`: To test SSL/TLS connections.
- `cat`: To display file contents.
- `chmod`: To modify file permissions.
- `ssh`: To log into Bandit Level 17 using the private key.

📚 **Resources**

- [nmap Command](https://nmap.org/book/man.html)
- [OpenSSL Command](https://www.openssl.org/docs/man1.1.1/man1/openssl-s_client.html)

---

🧑‍💻 **Step-by-Step Solution**

1️⃣ **Step 1: Scan Ports with nmap**

- Use `nmap` to scan the range of ports from 31000 to 32000:
  ```bash
  nmap -p 31000-32000 localhost
  This command will list all open ports within the specified range.
  2️⃣ Step 2: Check for SSL/TLS Connections
  ```

Use openssl s_client to check which ports support SSL/TLS:
openssl s_client -connect localhost:<port>
Replace <port> with each open port found in the previous step.

3️⃣ Step 3: Connect to the Correct Port

After testing, port 31790 is identified as the correct one. Connect using OpenSSL:
openssl s_client -connect localhost:31790
When prompted, paste the Bandit Level 16 password.

4️⃣ Step 4: Retrieve the Private SSH Key

After submitting the password, the output will display a private SSH key. Copy this entire key, including -----BEGIN RSA PRIVATE KEY----- and -----END RSA PRIVATE KEY-----.
5️⃣ Step 5: Save the Key to a File

Navigate to the /tmp directory:
cd /tmp
Create a new file using vim or nano and paste the private key inside:
vim sshkeygen.private

Save the file and adjust permissions to ensure only the current user can read/write the file:
chmod 600 sshkeygen.private
6️⃣ Step 6: Use the Private Key to Log In

Use the private key file to log into Bandit Level 17:
ssh -i sshkeygen.private bandit17@bandit.labs.overthewire.org -p 2220
7️⃣ Step 7: Retrieve the Password

Once logged in, read the file /etc/bandit_pass/bandit17 to retrieve the password:
cat /etc/bandit_pass/bandit17
🔑 Password for Bandit Level 17:
EReVavePLFHtFlFsjn3hyzMlvSuSAcRD
✅ Solution
To log into Bandit Level 17, use the following command:
ssh bandit17@bandit.labs.overthewire.org -p 2220
When prompted, enter the password EReVavePLFHtFlFsjn3hyzMlvSuSAcRD.

🔍 Thought Process Behind the Solution

1️⃣ Port Scanning: Used nmap to identify which ports were open between 31000 and 32000.
2️⃣ SSL/TLS Testing: Checked each open port using openssl s_client to identify the one that accepted the password securely.
3️⃣ Password Submission: Submitted the current password and retrieved the private SSH key.
4️⃣ Key Management: Stored the key securely, adjusted permissions, and used it to authenticate to the next level.
