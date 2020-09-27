#!/bin/bash -x
echo "Welcome to unit conversion program";

#Inch to feet conversion
inch=42;
feet=$((inch * 12));
echo "42inch in feet is:" $feet;

#Feet to meters conversion
meters=`awk "BEGIN {plot=60*40; m=plot*0.3048; print m}"`; #awk is used because of floating point numbers
echo "Plot of 60ft x 40ft in meters is:" $meters;

#Meter to acres conversion
meterSq=`awk "BEGIN {m2=$meters*$meters; print m2}"`;
plot=$((meterSq * 25));
acres=`awk "BEGIN{a=$plot*0.000247105; print a}"`;
echo "Area of 25 such plots in acres is:" $acres;
