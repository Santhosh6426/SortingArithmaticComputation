echo "Welcome to Arithmetic Computation and Sorting program"
#!/bin/bash
read -p "Enter the value of first input 'a': " a
read -p "Enter the value of second input 'b': " b
read -p "Enter the value of third input 'c': " c
w=$(( a + b * c ))
echo "$a + $b * $c = $w"
x=$(( a * b + c ))
echo "$a * $b + $c = $x"
y=`awk 'BEGIN{printf("%0.2f", '$c' + '$a' / '$b' )}'`
echo "$c + $a / $b = $y"
z=$(( $a % $b + $c ))
echo "$a % $b + $c = $z"
declare -A compute
compute[first]=$w
compute[second]=$x
compute[third]=$y
compute[fourth]=$z
echo -e "keys:${!compute[@]}\nValues:${compute[@]}"
m=0
for val in ${compute[@]}
do
	arr[$m]=$val
	m=$(( $m + 1 ))
done
echo "Array:${arr[@]}"
