#!/bin/bash -x
echo "Welcome to the program where a gambler starts with Rs 100 and places Re 1 bet until he/she goes broke and output number of times won and number of bets placed";

#Variables
bets=0;
win=0;
cash=100;

while [ $cash -gt 0 ];
do
        gamble=$(($RANDOM%2));
        if [ $gamble -eq 1 ];
        then
                echo "won";
                win=$((win+1));
        else
                echo "lost";
                bets=$((bets+1));
                cash=$((cash-1));
        fi
done

echo "Number of bets placed is " $bets;
echo "Number of times won:" $win;
