#!/bin/bash -x
echo "Welcome to the program that reads 5 random 2 digit values, then find their sum and average";

#Two digit random numbers
num1=$(($RANDOM%100+10)); #$(($RANDOM%upperlimit+lowerlimit))
num2=$(($RANDOM%100+10));
num3=$(($RANDOM%100+10));
num4=$(($RANDOM%100+10));
num5=$(($RANDOM%100+10));

#Calculations
sum=$((num1 + num2 + num3 + num4 + num5));
average=`awk "BEGIN {a=$sum/5; print a}"`;

echo "Sum:"$sum;
echo "Average:"$average;
