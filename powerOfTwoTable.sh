#!/bin/bash -x
echo "Welcome to program that takes a user input and prints a table of the powers of 2 that are less than or equal to 2^n"

read -p "Enter the number:" num;


for((i=1; i<=$num; i++));
do
        a=$i;
        power=$((2**i)); #double * for power
	
	#Output in table form
        printf "%10d  %10d\n" $a $power;
done
