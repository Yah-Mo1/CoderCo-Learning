An if statement is used to execute code conditionally based on whether a specified condition is true or false.

How to create if statements:
if condition
then
execute code block
fi

conditions in if statements are formed using comparison operators

eq = equals
ne = not equal to
lt = less than
gt = greater than
le = less than or equal to
ge = greater than or equal to

example:
age = 25

if [ $age -gt 18 ]
echo "You are an adult"
fi

$$
= AND
|| = OR
$$
