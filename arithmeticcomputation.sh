echo "Welcome to Arithmetic Computation and Sorting program"
#!/bin/bash
read -p "Enter the value of first input 'a': " a
read -p "Enter the value of second input 'b': " b
read -p "Enter the value of third input 'c': " c
w=$(( a + b * c ))
echo "$a + $b * $c = $w"
x=$(( a * b + c ))
echo "$a * $b + $c = $x"
