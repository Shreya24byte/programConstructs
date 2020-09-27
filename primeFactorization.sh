#!/bin/bash -x
echo "Welcome to the program that computes factors of a user input number using prime factorization method";

read -p "Enter a number:" num;

for i in $(seq 1 $num);
do
         [ $(expr $num / $i \* $i) == $num ] && echo $i; #i is the factor
done
