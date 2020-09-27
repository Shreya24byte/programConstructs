#!/bin/bash -x
echo "Welcome to the program to find second largest and second smallest element in the array without sorting the array";

declare -a array;

#Loop to print and store 10 random numbers in the array
for((i=0; i<=9; i++))
do
        array[i]=$(($RANDOM%1000+100));
done
echo "The array is:" ${array[@]};

largest=${array[0]};
secondLarge='unset';

#Loop to check for the second largest and second smallest numbers in the array
for((i=1; i<${#array[@]}; i++));
do
        if [[ ${array[i]} > $largest ]];
        then
                secondLarge=$largest;
                largest=${array[i]};
	 elif (( ${array[i]} != $largest )) && { [[ "$secondLarge" = "unset" ]] || [[ ${array[i]} < $secondSmall ]]; }
        then
                secondLarge=${array[i]};
        fi
done

echo "second largest number is $secondLarge";

smallest=${array[0]};
secondSmall='unset';

for((i=1; i<${#array[@]}; i++))
do
        if [[ ${array[i]} < $smallest ]]
        then
                secondSmall=$smallest;
                smallest=${array[i]};
	elif (( ${array[i]} != $smallest )) && { [[ "$secondSmall" = "unset" ]] || [[ ${array[i]} > $secondLarge ]]; }
        then
                secondSmall=${array[i]}
        fi
done

echo "second smallest number is $secondSmall";
