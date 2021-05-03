#! /usr/bin/bash

# Simple Password Generator

echo "This is a simple password generator"

echo "Please enter the length of the password: "
read PASS_LENGTH # the read here basically first prompts the user and then uses that information to write inside to newly created PASS_LENGTH variable, to be used later on inside the for loop

# simple for loop

for p in $(seq 1 5);
    #$(seq 1) means in first sequel or sequel 1 ( sequence operator inside the for loop, embedded )
    #the original is $(seq 1) but changing it to 1 5 meaning there will be 5 passwords
    do
        openssl rand -base64 48 | cut -c1-$PASS_LENGTH #cutting from column1 or first letter all the way to length of the password
        # base64 for basic password generator, random base64 characters. it has limited characters similar to the alphabet
        # the reason we put 48 is the length of the characters are 48 inside the base64, that specifies the length of the characters to use. 48 means all 48 can be used.
done