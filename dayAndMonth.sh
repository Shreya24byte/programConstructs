#!/bin/bash -x
echo "Welcome to the program that takes day and month from the user and prints true if day of month is between March 20 and June 20"

read -p "Enter the month starting with upper case:" month
read -p "Enter the date:" date

#Check if month and date is between May 20 and June 20
if [[ ( "$month" = "March" && $date -ge 20 ) || ( "$month" = "June" && $date -le 20 ) ]];
then
	echo "True";
elif [[ ( "$month" = "April" && $date -le 30 ) || ( "$month" = "May" && $date -le 31 ) ]];
then
	echo "True";
else
	echo "False";
fi
