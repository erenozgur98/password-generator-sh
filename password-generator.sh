#! /usr/bin/bash

# Simple Password Generator

echo "This is a simple password generator"

echo "Please enter the length of the password: "
read PASS_LENGTH # the read here basically first prompts the user and then uses that information to write inside to newly created PASS_LENGTH variable, to be used later on inside the for loop

# simple for loop

for p in $(seq 1);
    do
        openssl rand -base64 48 | cut -c1-$PASS_LENGTH #cutting from column1 or first letter all the way to length of the password
done