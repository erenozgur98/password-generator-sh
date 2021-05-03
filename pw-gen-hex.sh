#! /usr/bin/bash

# This is the same pw generator but with using hexedecimals

echo "This is a simple password generator with hexedecimals"
echo "Please enter the length of the password: "
read PASS_LENGTH

for p in $(seq 1 5);
    do
        openssl rand -hex 48 | cut -c1-$PASS_LENGTH
done