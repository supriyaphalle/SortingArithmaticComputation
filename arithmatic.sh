#!/bin/bash -x

echo " Welcome to the Sorting and arithmatic computations"

declare -A Results

read -p 'Enter first number: ' a;
read -p 'enter 2nd number: ' b;
read -p 'enter 3rd number: ' c;

Results[result1]=`echo "$a + $b * $c" | bc`

Results[result2]=`echo "$a * $b + $c" | bc`

Results[result3]=`echo "scale=2; $c + $a / $b" | bc`

Results[result4]=`echo " $a % $b +$c" | bc`

echo ${Results[@]}
