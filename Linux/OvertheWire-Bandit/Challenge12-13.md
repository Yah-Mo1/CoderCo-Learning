🏁 **Bandit Level 12 -> 13: Decompressing a Hexdumped and Compressed File**

🎯 **Level Objective**  
The password for Bandit Level 13 is stored in a file called `data.txt`, which is a hexdump of a file that has been repeatedly compressed. Your goal is to reverse the hexdump, decompress the file step-by-step, and retrieve the password.

🔧 **Commands Required**

- `pwd`: To check the current working directory.
- `cd`: To change directories.
- `mkdir` / `mktemp -d`: To create a temporary working directory.
- `cp`: To copy the file.
- `xxd`: To reverse a hexdump into the original file.
- `file`: To determine the type of file (helpful for identifying compression formats).
- `gunzip`, `bzip2`, `tar`: To decompress and unpack compressed files.
- `cat`: To read the contents of the final decompressed file.

📚 **Resources**

- [xxd Command](https://man7.org/linux/man-pages/man1/xxd.1.html)
- [File Command](https://man7.org/linux/man-pages/man1/file.1.html)
- [Compression Tools](https://www.gnu.org/software/gzip/manual/gzip.html)

🧑‍💻 **Step-by-Step Solution**

1️⃣ **Step 1: Prepare the Environment**

- First, navigate to your current directory to check your location using the `pwd` command:
  pwd

This will display `/home/bandit12`, or whichever directory you're in.

- Next, create a working directory under `/tmp` using the `mktemp` command:
  mktemp -d

2️⃣ **Step 2: Copy the File**

- Copy the `data.txt` file into the temporary directory you just created:
  cp /home/bandit12/data.txt /tmp/<your_tmp_directory>

3️⃣ **Step 3: Reverse the Hexdump**

- The file you copied is a hexdump. Use the `xxd` command to reverse it back into its original binary form:
  xxd -r /tmp/<your_tmp_directory>/data.txt > /tmp/<your_tmp_directory>/myfile

4️⃣ **Step 4: Identify the Compression Format**

- Now that you have the original file, use the `file` command to determine what kind of compression has been applied:
  file /tmp/<your_tmp_directory>/myfile

- The file should tell you the compression format (gzip, bzip2, tar, etc.).

5️⃣ **Step 5: Decompress the File**

- Based on the file type, use the appropriate decompression tool:
  - If it's a `.gz` file, use `gunzip`:
    ```
    mv /tmp/<your_tmp_directory>/myfile /tmp/<your_tmp_directory>/myfile.gz
    gunzip /tmp/<your_tmp_directory>/myfile.gz
    ```
  - If it's a `.tar` file, use `tar`:
    ```
    tar -xf /tmp/<your_tmp_directory>/myfile.tar
    ```
  - If it's a `.bz2` file, use `bzip2`:
    ```
    bzip2 -d /tmp/<your_tmp_directory>/myfile.bz2
    ```

6️⃣ **Step 6: Repeat the Decompression Process**

- After decompression, run the `file` command again on the resulting file:
  file /tmp/<your_tmp_directory>/myfile3

- Keep repeating the decompression process (gzip, tar, bzip2) until the file is recognized as an ASCII text file.

7️⃣ **Step 7: Read the File and Retrieve the Password**

- Once the file is recognized as ASCII text, use `cat` to read the file and retrieve the password:
  cat /tmp/<your_tmp_directory>/myfile3

The password will be displayed.

The password for Bandit Level 13 is:
FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn

8️⃣ **Step 8: Log Into Bandit Level 13**

- Once you have the password, log into Bandit Level 13 using SSH:
  ssh bandit13@bandit.labs.overthewire.org -p 2220

When prompted, enter the password `FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn`.

✅ **Solution**  
To log in to Bandit Level 13, use the following command:
ssh bandit13@bandit.labs.overthewire.org -p 2220

When prompted, enter the password `FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn`.

🔍 **Thought Process Behind the Solution**  
1️⃣ **Hexdump**: The initial file is a hexdump, so we must reverse it back to its original form using `xxd`.  
2️⃣ **Compression Identification**: We used `file` to identify the type of compression applied.  
3️⃣ **Decompression**: We then applied the appropriate decompression tools (gzip, tar, bzip2) until we obtained the ASCII text file containing the password.  
4️⃣ **Final Password Extraction**: After decompression, we used `cat` to read the final file and extract the password.
