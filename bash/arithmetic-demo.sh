#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number
read -p "Input1? " firstnum
read -p "Input2? " secondnum
#firstnum=5
#secondnum=2
sum=$((firstnum + secondnum))
sub=$((firstnum - secondnum))
dividend=$((firstnum / secondnum))
multiply=$((firstnum * secondnum))
remainder=$((firstnum % secondnum))
power=$((firstnum**secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum divided by $secondnum gives $dividend with reminder of $remainder
  - More precisely, dividend is $fpdividend
$firstnum multiply by $secondnum is $multiply
$firstnum subtracting by $secondnum is $sub
Displaying the $firstnum  raised to the power of the $secondnum  is $power
EOF
