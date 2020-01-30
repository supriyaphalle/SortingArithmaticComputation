#!/bin/bash -x

echo " Welcome to the Sorting and arithmatic computations"

read -p 'Enter first number: ' a;
read -p 'enter 2nd number: ' b;
read -p 'enter 3rd number: ' c;

result1=$(( $a + $b * $c))
echo $result1;

result2=$(( $a * $b + $c))
echo $result2;

