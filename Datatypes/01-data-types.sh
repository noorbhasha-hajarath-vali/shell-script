#!/bin/bash

NUMBER1=100
NUMBER2=200
NAME=Vali

SUM=$(($NUMBER1+$NUMBER2+$NAME))

# when you given any name in calculation, it will take name value as 0 and print the result

echo "Total is: ${SUM}"

# String

FRUITS=("Apple", "Orange", "Mango", "Banana")

echo "Fruits List: ${FRUITS[@]}"
echo "Fruits List: ${FRUITS[0]}"
echo "Fruits List: ${FRUITS[2]}"

# if we print non existing value, then it will not print anything
echo "Fruits List: ${FRUITS[5]}"
