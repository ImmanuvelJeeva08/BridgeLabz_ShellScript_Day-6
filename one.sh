#!/bin/bash
echo "*** Converting between the different temperature scales ***"
echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
echo -n "Select your choice (1-2) : "
read choice
degF ()
{
 echo "scale=2;((9/5) * $degC) + 32" |bc
}
degC ()
{
 echo "scale=2;(5/9)*($degF-32)"|bc
}
if [ $choice -eq 1 ]
then
	echo -n "Enter temperature (C) : "
	read degC
        degF degC
	echo "$degC C = $degF F"
elif [ $choice -eq 2 ]
then
	echo -n "Enter temperature (F) : "
	read degF 
	degC degF
	echo "$degF = $degC"
else
	echo "Please select 1 or 2 only"
	exit 1
fi
