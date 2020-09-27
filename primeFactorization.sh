#!/bin/bash -x
echo "Welcome to the prime factorization problem to store the prime factors of the number into an array and display the output";

read -p "Enter a number:" n;

#Declaring the array
result=()

#Loop to get the prime factors
for i in $(seq 1 $n)
do
        output=`expr $n / $i \* $i`;

        if [ $output -eq $n ];
        then
                result+=( $i );
        fi
done
echo "The array having prime factors is: "${result[@]};

