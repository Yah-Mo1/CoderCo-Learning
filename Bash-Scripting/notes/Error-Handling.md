### **Summary Notes on Error Handling in Bash Scripting**

Error handling in Bash scripting ensures scripts handle unexpected conditions gracefully, avoiding crashes or incorrect behavior. Bash provides built-in tools like exit codes, conditional statements, and special operators for managing errors.

---

### **1. Exit Codes**

- Every command in Bash returns an **exit code** (`$?`), indicating success or failure.
- **0**: Success
- **Non-zero**: Failure

#### Example: Checking Exit Code

```bash
#!/bin/bash
mkdir my_directory

if [[ $? -eq 0 ]]; then
    echo "Directory created successfully."
else
    echo "Error: Failed to create directory."
fi
```

---

### **2. Using `if` Statements**

Use `if` to check command success or failure.

#### Example: File Check

```bash
#!/bin/bash
if [[ -f "file.txt" ]]; then
    echo "File exists."
else
    echo "Error: File not found."
fi
```

---
