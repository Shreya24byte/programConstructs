#!/bin/bash -x
echo "Welcome to the program to determine if the user input number is prime or not";

read -p "Enter number:" num;

#Prime number check
for((i=2; i<=num/2; i++));
do
        if [ $((num%i)) -eq 0 ];
        then
                echo "$num is not a prime number";
        exit
        fi
done
echo "$num is a prime number";
