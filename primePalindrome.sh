#!/bin/bash -x
echo "Welcome to the program to check if the number from the user is prime and also it's palindrome is prime";

read -p "enter the number:" num;

#Function to check if number is prime
function prime() {
        a=$1
        for((i=2; i<=a/2; i++));
        do
                if [ $((a%i)) -eq 0 ];
                then
                        echo " number is not prime";
                exit
                fi
        done
        echo " number is prime";
}

#Function to get the palindrome
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

        result="$( prime $rev )";
        echo "palindrome"$result;
}

prime $num;
palindrome $num;
