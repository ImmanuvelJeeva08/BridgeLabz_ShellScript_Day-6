#!/bin/bash
echo "Enter your number"
read num
s=0
rev=""
temp=$num
fn ()
{
  s=$(( $num % 10 ))
  num=$(( $num / 10 ))
  rev=$( echo ${rev}${s} )
}
while [ $num -gt 0 ]
do
  fn num
done

if [ $temp -eq $rev ];
then
	echo "Number is palindrome"
else
	echo "Number is NOT palindrome"
fi


