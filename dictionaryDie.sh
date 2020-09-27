#!/bin/bash -x
echo "Welcome to the program to repeat die roll till one of the number reaches 10 and store the results in dictionary also find the number that appeared min and max times";

#Variables
declare -A dic
count=0;
one=0;
two=0;
three=0;
four=0;
five=0;
six=0;

#Loop to check which die number has appeared 10 times
while [[ $one -lt 10 && $two -lt 10 && $three -lt 10 && $four -lt 10 && $five -lt 10 && $six -lt 10 ]];
do
	((count++));
        result=$((1+$RANDOM%6));

	#Store results in the dictionary
        dic[$count]=$result ;
	max=$result;

	#Check the number that has appeared on the die and count the number of times.
        if [ $result -eq 1 ];then
                one=$((one+1));
                elif [ $result -eq 2 ];then
                        two=$((two+1));
                        elif [ $result -eq 3 ];then
                                three=$((three+1));
                                elif [ $result -eq 4 ];then
                                        four=$((four+1));
                                        elif [ $result -eq 5 ];then
                                                five=$((five+1));
                                                else
                                                        six=$((six+1));
        fi
done

#Get the number that appeared min times
min=`printf "$one" "$two" "$three" "$four" "$five" "$six" | sort -n | head -1`;

echo "the number that reached maximum times is:" $max;
echo "the number that reached minimum times is:" $min;
echo "dictionary:" ${dic[@]};
