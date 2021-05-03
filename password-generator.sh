#! /usr/bin/bash

# Simple Password Generator

echo "This is a simple password generator"

echo "Please enter the length of the password: "
read PASS_LENGTH

# simple for loop

for p in $(seq 1);
    do
        openssl rand -base64 48 | cut -c1-$PASS_LENGTH #cutting from column1 or first letter all the way to length of the password
done