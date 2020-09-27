#!bin/bash -x
echo "Welcome to the program to simulate a coin flip and print the output";

coin=$(($RANDOM%2));

#Coin toss
if [ $coin -eq 1 ];
then
    echo "Heads";
else
    echo "Tails";
fi
