#!/bin/bash -x
echo "Welcome to program that reads 5 random 3 digit numbers and outputs the min and max value";

#Get random three digit numbers
num1=$(($RANDOM%999+100));
num2=$(($RANDOM%999+100));
num3=$(($RANDOM%999+100));
num4=$(($RANDOM%999+100));
num5=$(($RANDOM%999+100));

#Minimum number search
if [ $num1 -lt $num2 ] && [ $num1 -lt $num3 ] && [ $num1 -lt $num4 ] && [ $num1 -lt $num5 ];
then
	echo "The minimum number is:" $num1;
elif [ $num2 -lt $num3 ] && [ $num2 -lt $num4 ] && [ $num2 -lt $num5 ];
then
	echo "The minimum number is:" $num2;
elif [ $num3 -lt $num4 ] && [ $num3 -lt $num5 ];
then
	echo "The minimumnumber is:" $num3;
elif [ $num4 -lt $num5 ];
then
	echo "The minimum number is:" $num4;
else
	echo "The minimum number is:" $num5;
fi

#Maximum number search
if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ] && [ $num1 -gt $num4 ] && [ $num1 -gt $num5 ];
then
	echo "The maxmum number is:" $num1;
elif [ $num2 -gt $num3 ] && [ $num2 -gt $num4 ] && [ $num2 -gt $num5 ];
then
	echo "The maximum number is:" $num2;
elif [ $num3 -gt $num4 ] && [ $num3 -gt $num5 ];
then
	echo "The maximum number is:" $num3;
elif [ $num4 -gt $num5 ];
then
	echo "The maximum number is:" $num4;
else
	echo "The maximum number is:" $num5;
fi
