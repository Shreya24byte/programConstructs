#!/bin/bash -x
echo "Welcome to the program that takes range of number as input and outputs the prime numbers in that range";

read -p "Enter the lower limit:" low;
read -p "Enter the upper limit:" upper;

#Variable
count=0;

#Prime number check
for i in `seq $low $upper`;
do
        ret=$(factor $i | grep $i | cut -d ":" -f 2 | cut -d " " -f 2);
        if [ "$ret" -eq "$i" ];
        then
                echo "$i is prime";
                ((count++));
        fi
done
