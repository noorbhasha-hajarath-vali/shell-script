#!/bin/bash

read -p "Enter the number:" NUMBER

if [ $((${NUMBER} % 2 )) -eq 0 ]; then
    echo "Given Nnumber "${NUMBER}" is EVEN Number"
else
    echo "Given Nnumber ${NUMBER} is ODD Number"
fi
