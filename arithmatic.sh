#!/bin/bash -x

echo " Welcome to the Sorting and arithmatic computations"

declare -A Results


FirstOperation=1;
SecondOperation=2;
ThirdOperation=3;
ForthOperation=4;

read -p 'Enter first number: ' a;
read -p 'enter 2nd number: ' b;
read -p 'enter 3rd number: ' c;

Results[$FirstOperation]=`echo "$a + $b * $c" | bc`

Results[$SecondOperation]=`echo "$a * $b + $c" | bc`

Results[$ThirdOperation]=`echo "scale=2; $c + $a / $b" | bc`

Results[$ForthOperation]=`echo " $a % $b +$c" | bc`

echo "Direct Result through Dictionary ${Results[@]}"


for ((i=1;i<5;i++))
do
		a[i]=${Results[$i]}
done


echo "Result through Array:${a[@]} "
