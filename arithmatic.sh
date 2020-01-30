#!/bin/bash -x

echo " Welcome to the Sorting and arithmatic computations"

read -p 'Enter first number: ' a;
read -p 'enter 2nd number: ' b;
read -p 'enter 3rd number: ' c;

result1=`echo "$a + $b * $c" | bc`
echo $result1;

result2=`echo "$a * $b + $c" | bc`
echo $result2;

result3=`echo "scale=2; $c + $a / $b" | bc`
echo $result3;

