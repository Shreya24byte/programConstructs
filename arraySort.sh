#!/bin/bash -x
echo "Welcome to the program to sort the array and find the second largest and the second smallest element in the array";

#Loop to get 10 random numbers
for ((i=0; i<=9; i++));
do
	#Store numbers in an array
        num[i]=$(($RANDOM%1000+100));
done
echo ${num[@]};

#Sorting the array to get the second largest and second smallest numbers
secondLargest=$(printf '%s\n' "${num[@]}}"| sort -n| tail -2| head -1);
echo "the second largest array element is:" $secondLargest;

secondSmallest=$(printf '%s\n' "${num[@]}}"| sort -n| head -2| tail -1);
echo "the second smallest array element is:" $secondSmallest;
