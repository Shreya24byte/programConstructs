#!/bin/bash -x
echo "Welcome to the program for degF or degC conversion based on user's selection";

echo "1. Celcius to Farenheit conversion";
echo "2. Farenheit to celcius conversion";
read -p "Choose 1 or 2:" choice;
read -p "Enter temperature for conversion:" temp;

#Function for Fareinheit conversion
function degF() {
        c=$1;
        f=`awk "BEGIN {a=($c*9/5)+32; print a}"`;
        echo "$c C = $f F";
}

#Function for degree conversion
function degC() {
        f=$1;
        c=`awk "BEGIN {a=($f-32)*5/9; print a}"`;
        echo "$f F = $c C";
}

#Selecting the function to be called based of user's choice
case $choice in
        1) degF $temp;;
        2) degC $temp;;
        *) echo "error";;
esac
