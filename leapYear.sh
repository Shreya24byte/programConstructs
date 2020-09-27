#!/bin/bash -x
echo "Welcome to program that takes a year as input and outputs if the year is a Leap Year or not";

read -p "Enter the year:" year;

#Statements to check if leap year
if [ $((year%400)) -eq 0 ];
then
	echo "$year is a leap year";
elif [ $((year%100)) -eq 0 ];
then
	echo "$year not a leap year";
elif [ $((year%4)) -eq 0 ];
then
	echo "$year is a leap year";
else
	echo "$year is not a leap year";
fi
