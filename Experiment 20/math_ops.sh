#!/bin/bash

# Input for GCD and LCM
echo "Enter first number:"
read a

echo "Enter second number:"
read b

x=$a
y=$b

# GCD calculation using Euclidean Algorithm
while [ $y -ne 0 ]; do
    temp=$y
    y=$((x % y))
    x=$temp
done

gcd=$x

# LCM calculation
lcm=$(( (a * b) / gcd ))

echo "GCD of $a and $b is: $gcd"
echo "LCM of $a and $b is: $lcm"

# Prime number check
echo "Enter a number to check for prime:"
read n

flag=0

if [ $n -le 1 ]; then
    flag=1
fi

for ((i = 2; i <= n / 2; i++)); do
    if [ $((n % i)) -eq 0 ]; then
        flag=1
        break
    fi
done

if [ $flag -eq 0 ]; then
    echo "$n is a Prime Number"
else
    echo "$n is NOT a Prime Number"
fi
