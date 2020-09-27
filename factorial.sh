#!/bin/bash -x
echo "Welcome to the program that computes the factorial of a number"

read -p "Enter a number:" num;

#Variable
fact=1;

for((i=2;i<=num;i++));
do
  fact=$((fact*i));
done

echo "factorial of the number is:" $fact;
