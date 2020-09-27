#!/bin/bash -x
echo "Welcome to the flip coin program till heads or tails wins 11 times";

#Variables
heads=0;
tails=0;

#Loop till heads or tails has won 11 times
while [[ $heads -lt 11  && $tails -lt 11 ]];
do
        coin=$(($RANDOM%2));

        if [ $coin -eq 0 ];
        then
                echo "Heads";
                heads=$(( heads+1 ));
        else
                echo "Tails"
                tails=$(( tails+1 ));
        fi
done
