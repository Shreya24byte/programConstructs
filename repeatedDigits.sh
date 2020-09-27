#!/bin/bash -x
echo "Welcome to the program to take 0-100 numbers and find the digits that are repeated and store them in an array";

arr=();

#Loop to traverse through the numbers
for ((i=10; i<=100; i++));
do
        #Separating the digits of the number
        firstdigit="${i:0:1}";
        rem=`expr $i % 10`;

        #Get the numbers with repeated digits
        if [ $firstdigit -eq $rem ];
        then
                arr+=( $i );
        fi
done

echo "Array with repeated digits is:" ${arr[@]};
