🎯 **Level Objective**  
Your goal for Bandit Level 0 is to log into the game server using SSH with the following credentials:

- **Host**: localhost
- **Port**: 2220
- **Username**: bandit0
- **Password**: bandit0

Once you’re connected, you’ll be ready to tackle the next challenge.

---

🔧 **Commands Required**

- `ssh`: A command-line tool to securely connect to remote systems.

---

📚 **Resources**

- [SSH - Secure Shell on Wikipedia](https://en.wikipedia.org/wiki/Secure_Shell)
- [How to use SSH on wikiHow](https://www.wikihow.com/Use-SSH)

---

🧑‍💻 **Step-by-Step Solution**

**1️⃣ Step 1: Understanding the `ssh` Command**  
The `ssh` command is used to securely connect to remote systems. Its basic syntax is:

```bash
ssh username@hostname -p port
```

**2️⃣ Step 2: Applying the Challenge Details**  
To connect to the Bandit server for Level 0, use the provided details:

- **Username**: bandit0
- **Host**: localhost
- **Port**: 2220

The command to log in looks like this:

```bash
ssh bandit0@localhost -p 2220
```

**3️⃣ Step 3: Provide the Password**  
After running the command, you’ll be prompted to enter the password. For this level, the password is `bandit0`. Simply type it in when asked.

---

✅ **Solution**  
To log in, use the following command:

```bash
ssh bandit0@localhost -p 2220
```

When prompted, enter the password `bandit0`. Once authenticated, you will successfully log into the server and can proceed to Level 1.

---

🔍 **Thought Process Behind the Solution**  
1️⃣ **Identify the tool**: SSH is the secure connection method used to access remote servers.  
2️⃣ **Understand the syntax**: Use the correct format to include the username, host, and port.  
3️⃣ **Authenticate**: Enter the provided credentials (username and password) to gain access to the game server.

By breaking it down step-by-step, the solution becomes clear and easy to follow. You’ve now completed the first challenge and are ready to explore the next levels!

---
