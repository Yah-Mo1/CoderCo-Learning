#!/bin/bash

: ' Write a script that takes two numbers as input
from the user and performs basic arithmetic operations (addition,
subtraction, multiplication, and division) and then displays all the
answers of those operations in the terminal ' 

echo "Hello world"
num1="$1"
num2="$2"

sum=$((num1 + num2))
product=$((num1 * num2))
divisor=$((num1 / num2))
subtract=$((num1 - num2))

echo "The total sum of both numbers is, $sum" 
echo "The product of both numbers is, $product"
echo "The subtraction of both numbers is, $subtract"
echo "The divisor of both numbers is, $divisor"



