#!/bin/bash -x
echo "Welcome to the program to generate a birth month of 50 individuals and find all the individuals having birthdays in the same month and print it"

#Variables
jan=0; 
feb=0; 
mar=0; 
apr=0; 
may=0; 
jun=0; 
jul=0; 
aug=0; 
sep=0; 
oct=0; 
nov=0; 
dec=0;

#Loop to get the birth month of 50 people
for ((i=1; i<=50; i++));
do
        month=$((1+$RANDOM%12));

        #To check the num of people born in the same month
        if [ $month -eq 1 ];then
        jan=$((jan+1));
                elif [ $month -eq 2 ];then
                feb=$((feb+1));
                        elif [ $month -eq 3 ];then
                        mar=$((mar+1));
                                elif [ $month -eq 4 ];then
                                apr=$((apr+1));
                                        elif [ $month -eq 5 ];then
                                        may=$((may+1));
                                                elif [ $month -eq 6 ];then
                                                jun=$((jun+1));
                                                        elif [ $month -eq 7 ];then
                                                        jul=$((jul+1));
                                                                elif [ $month -eq 8 ];then
                                                                aug=$((aug+1));
                                                                        elif [ $month -eq 9 ];then
                                                                        sep=$((sep+1));
                                                                                elif [ $month -eq 10 ];then
                                                                                oct=$((oct+1));
                                                                                        elif [ $month -eq 11 ];then
                                                                                        nov=$((nov+1));
                                                                                        else
                                                                                        dec=$((dec+1));
        fi
done

#Store results in the dictionary
declare -A birth
birth[january]=$jan;
birth[february]=$feb;
birth[march]=$mar;
birth[april]=$apr;
birth[may]=$may;
birth[june]=$jun;
birth[july]=$jul;
birth[august]=$aug;
birth[september]=$sep;
birth[october]=$oct;
birth[november]=$nov;
birth[december]=$dec;

echo "Dictionary is:" ${birth[@]};
