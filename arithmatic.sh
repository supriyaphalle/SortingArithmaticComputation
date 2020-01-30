#!/bin/bash  

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
		array[i]=${Results[$i]}
done

echo "Result through Array:  ${array[@]} "


#Sorting in DEcending order
i=1;
while (($i < $((${#array[@]})) ))
do
	j=$((i+1))
	if (( ${array[i]%.*} < ${array[j]%.*} ))
	then
		temp=${array[i]}
		array[i]=${array[j]}
		array[j]=$temp
	fi
	((i++))
done

echo " Decenfing order : ${array[@]}"
