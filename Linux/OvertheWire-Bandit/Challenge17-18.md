🏁 **Bandit Level 17 -> 18: Finding the Changed Line Between Two Files**

🎯 **Level Objective**  
The password for Bandit Level 18 is in the file `passwords.new` and is the only line that differs from `passwords.old`. Your task is to identify the changed line between these two files.

🔧 **Commands Required**

- `diff`: To find the difference between two files.

📚 **Resources**

- [diff Command Manual](https://man7.org/linux/man-pages/man1/diff.1.html)

---

🧑‍💻 **Step-by-Step Solution**

1️⃣ **Step 1: List Files**

- First, check the contents of the home directory using:
  ```bash
  ls
  You will see two files: passwords.old and passwords.new.
  2️⃣ Step 2: Compare Files with diff
  ```

Use the diff command to compare the files while ignoring whitespace differences:
diff -w passwords.old passwords.new
The -w option ignores whitespace changes.

3️⃣ Step 3: Analyze the Output

The output will look something like this:
42c42
< x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO

---

> ktfgBvpMzWKR5ENj26IbLGSblgUG9CzB
> The line that has changed is x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO.

4️⃣ Step 4: Test the Passwords

Use both lines to attempt login. The correct password is:
x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO
5️⃣ Step 5: Log into Bandit Level 18

Use the password to log in to the next level:
ssh bandit18@bandit.labs.overthewire.org -p 2220
🔑 Password for Bandit Level 18:
x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO
✅ Solution
To log into Bandit Level 18, use the following command:
ssh bandit18@bandit.labs.overthewire.org -p 2220
When prompted, enter the password x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO.

🔍 Thought Process Behind the Solution

1️⃣ File Comparison: Used diff to compare the two files.
2️⃣ Identifying the Change: Focused on the output, identifying the line that changed.
3️⃣ Testing Both Lines: Tried both lines from the output, successfully logging in with the correct one.
