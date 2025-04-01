# Terraform Advanced Concepts Overview

## 🔢 `count` Parameter

The `count` parameter allows you to define how many instances of a particular resource you want to create. It's useful when all instances share the same configuration.

### Example:

```hcl
resource "aws_instance" "server" {
  count         = 4
  ami           = "ami-a1b2c3d4"
  instance_type = "t2.micro"

  tags = {
    Name = "Server ${count.index}"
  }
}
```

This creates 4 EC2 instances, each tagged as `Server 0`, `Server 1`, etc.

---

## 🔁 `for_each` Loop

Unlike `count`, `for_each` is used to create multiple resources that each have **unique attributes**.

### Example:

```hcl
resource "azurerm_resource_group" "rg" {
  for_each = tomap({
    a_group       = "eastus",
    another_group = "westus2"
  })

  name     = each.key
  location = each.value
}
```

This creates two resource groups: one in `eastus`, another in `westus2`.

- `each.key`: the key in the map (e.g., `"a_group"`)
- `each.value`: the corresponding value (e.g., `"eastus"`)

---

## 🧠 `coalesce` Function

Returns the **first non-null, non-empty** value from a list of arguments. All arguments must be of the **same type**.

### Example:

```hcl
coalesce("", null, "default", "fallback") # returns "default"
```

---

## 🧬 `merge` Function

Combines multiple maps into one. If a key exists in multiple maps, the **last one wins**.

### Example:

```hcl
merge({a = "b", c = "d"}, {e = "f", c = "z"})
# => {
#   "a" = "b",
#   "c" = "z",
#   "e" = "f"
# }
```

More complex:

```hcl
merge({a = "b"}, {a = [1,2], c = "z"}, {d = 3})
# => {
#   "a" = [1, 2],
#   "c" = "z",
#   "d" = 3
# }
```

---

## ❓ Conditionals in Terraform

Ternary conditionals let you control values based on logic.

### Syntax:

```hcl
condition ? true_val : false_val
```

### Example:

```hcl
instance_type = var.env == "prod" ? "t3.large" : "t3.micro"
```

---

### Using the `can()` Function

`can()` checks whether an expression is valid (i.e., doesn’t error out).

### Example:

```hcl
can(lookup(var.some_map, "key")) ? var.some_map["key"] : "default"
```

---

## 🔗 Concatenating Lists and Strings

### `concat` Function

Merges multiple lists (or sets of strings).

```hcl
concat(["a", ""], ["b", "c"])
# => ["a", "", "b", "c"]

concat([], [1, "a"], [[3], "c"])
# => [1, "a", [3], "c"]
```

### `join` Function

Joins list elements into a single string using a separator.

```hcl
join("-", ["foo", "bar", "baz"])
# => "foo-bar-baz"

join(", ", ["foo"])
# => "foo"
```

---

## 📁 Managing Files in Terraform

### `file()` Function

Reads the contents of a file and returns it as a string.

```hcl
file("${path.module}/hello.txt")
# => "Hello World"
```

### `templatefile()` Function

Loads a template file and injects variable values.

```hcl
templatefile("${path.module}/user_data.sh", {
  name = var.instance_name
})
```

---

## 🔄 Working with JSON

- `jsonencode(map)`: Converts a map into a JSON string
- `jsondecode(json)`: Parses a JSON string into a map or list

### Example:

```hcl
jsonencode({
  name = "Yahya"
})
# => {"name":"Yahya"}
```

---

## 🔁 `for` Expressions

Useful for transforming lists or maps.

### Example:

```hcl
[for name in var.names : upper(name)]
# => Converts all names to uppercase
```

---

## 🔠 `upper()` and `lower()` Functions

Convert strings to upper or lower case:

```hcl
upper("devops") # => "DEVOPS"
lower("PA Consulting") # => "pa consulting"
```

---

## ✂️ Slicing Lists or Maps

You can extract a portion of a list using slice syntax.

### Example:

```hcl
slice(["a", "b", "c", "d"], 1, 3)
# => ["b", "c"]
```

---

## 🔢 Understanding `range()`

Generates a sequence of numbers.

### Example:

```hcl
[for i in range(3) : "vm-${i}"]
# => ["vm-0", "vm-1", "vm-2"]
```

Can be combined with `for_each` or other expressions.

---

## 🧱 `dynamic` Blocks

`dynamic` blocks let you define nested blocks programmatically, useful when creating resources like security rules.

### Example:

```hcl
resource "aws_security_group" "example" {
  name = "example"

  dynamic "ingress" {
    for_each = var.ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
```
