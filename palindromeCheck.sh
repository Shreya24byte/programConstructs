#!/bin/bash -x
echo "Welcome to the program to check if two numbers are palindromes";

read -p "Enter the first number:" num1;
read -p "Enter the second number:" num2;

function palindrome() {
	
	#Variables
	n=$1;
	sd=0;
	rev="";

	while [ $n -gt 0 ];
	do
        	sd=$(( $n % 10 ));
       		n=$(( $n / 10));
	        rev=$( echo ${rev}${sd} );
	done

	#Check if number is a palindrome
	if [ $1 -eq $rev ];
	then
        	echo "$1 is a palindrome";
	else
        	echo "$1 is not a palindrome";
	fi
}

#Function call
palindrome $num1
palindrome $num2
