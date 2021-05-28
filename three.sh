#!/bin/bash
echo "Enter a number: "
read num
i=2
f=0
prime()
{
 if [ `expr $num % $i` -eq 0 ]
 then
 f=1
 fi
 i=`expr $i + 1`
}
while [ $i -le `expr $num / 2` ]
do
  prime 
done
if [ $f -eq 1 ]
then
echo "The number is composite"
else
echo "The number is Prime"
fi
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






