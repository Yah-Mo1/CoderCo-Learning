### Handling Bad Data in Bash Scripting

In Bash scripting, handling bad data involves validating user input or data from files to ensure correctness before processing. This prevents crashes, incorrect outputs, and security vulnerabilities. Common techniques include conditional checks, regular expressions, and loops.

---

### **1. Validating Numeric Input**

To ensure that input is numeric, use conditional expressions or regular expressions.

#### Example: Validate Numeric Input

```bash
#!/bin/bash

# Prompt user for a number
read -p "Enter a number: " number

# Check if input is a valid number
if [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Valid number: $number"
else
    echo "Error: Input is not a valid number."
fi
```

#### Explanation:

- `^[0-9]+$` checks if the input contains only digits.
- If the input is not numeric, the script outputs an error message.

---

### **2. Checking for Empty Input**

Use conditional checks to ensure the input is not empty.

#### Example: Check for Empty Input

```bash
#!/bin/bash

read -p "Enter your name: " name

if [[ -z "$name" ]]; then
    echo "Error: Name cannot be empty."
else
    echo "Hello, $name!"
fi
```

#### Explanation:

- `-z "$name"` checks if the variable `name` is empty.
- The script prompts the user until valid input is entered.
