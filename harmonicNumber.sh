#!/bin/bash -x
echo "Welcome to the program that takes a user input and prints the nth harmonic number"

read -p "Enter the nth number:" num;

#Loop to print harmonic numbers
for((i=1; i<=$num; i++));
do
        harmonic=`expr 1/$i`;
        echo $harmonic;
done

echo "the nth harmonic number is:" $harmonic;
