#!/bin/bash -x
echo "Welcome to the program that takes a user input n and prints a table of power of 2 that are less than or equal to 2^n till 256 is reached";

read -p "Enter a number:" n

#Variables
pow=0;
i=0

while [[ $pow -lt 256 && $i -le $n ]];
do
        for ((i=1; i<=$n; i++));
        do
        pow=$((2**i));

	#Print output in table form
        printf "%10d %10d\n" $i $pow;
        done
done
