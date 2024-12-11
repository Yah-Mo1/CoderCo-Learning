🏁 **Bandit Level 11 -> 12: Decoding ROT13 in `data.txt`**

🎯 **Level Objective**  
The password for Bandit Level 12 is stored in the `data.txt` file, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions. This is a ROT13 cipher, a simple letter substitution cipher.

🔧 **Commands Required**

- `cat`: Used to print the contents of the file.
- `tr`: A utility to translate or replace characters.
- `ssh`: A tool for secure remote login.

📚 **Resources**

- [tr command](https://askubuntu.com/questions/1097761/changing-individual-letter-position-with-bash)
- [ROT13 Cipher](https://en.wikipedia.org/wiki/ROT13)

🧑‍💻 **Step-by-Step Solution**

1️⃣ **Step 1: Understand ROT13**

- **ROT13**: A letter substitution cipher that shifts each letter by 13 positions in the alphabet.
- For example, "a" becomes "n", "b" becomes "o", "z" becomes "m". Similarly, uppercase letters are shifted.

2️⃣ **Step 2: Use the `cat` Command to View the Content**

- First, print the contents of the `data.txt` file using the `cat` command:
  cat data.txt

3️⃣ **Step 3: Decode the ROT13 Cipher**

- Use the `tr` command to shift the characters back by 13 positions. This is how you reverse the ROT13 cipher.
- The `tr` command takes the characters in `data.txt` and shifts them back by 13 positions:
  cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'

- This command works as follows:
  - `cat data.txt`: Outputs the contents of the file.
  - `tr 'A-Za-z' 'N-ZA-Mn-za-m'`: Translates (shifts) each letter 13 positions in the alphabet.

4️⃣ **Step 4: Retrieve the Password**

- After decoding, the plain text password will be shown in your terminal. It will look something like:
  7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4

The password for Bandit Level 12 is:  
7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4

5️⃣ **Step 5: Log Into Bandit Level 12**

- Once you have the password, use SSH to log into Bandit Level 12:
  ssh bandit12@bandit.labs.overthewire.org -p 2220

When prompted, enter the password `7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4`.

✅ **Solution**  
To log in to Bandit Level 12, use the following command:

ssh bandit12@bandit.labs.overthewire.org -p 2220
When prompted, enter the password `7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4`.

🔍 **Thought Process Behind the Solution**  
1️⃣ **Identify the cipher**: The text is encoded using ROT13, so we need to reverse it.  
2️⃣ **Use `tr`**: The `tr` command can translate characters by shifting them back 13 positions.  
3️⃣ **Log into the next level**: After decoding, use SSH to log into Bandit Level 12.
