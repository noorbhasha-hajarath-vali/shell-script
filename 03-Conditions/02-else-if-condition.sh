#!/bin/bash

read -p "Enter the number:" NUMBER

if [ ${NUMBER} -lt 10 ]; then
    echo "Given Nnumber "${NUMBER}" is Less than 10"
elif [ ${NUMBER} -eq 10 ]; then
    echo "Given Nnumber "${NUMBER}" is equal to 10"
else
    echo "Given Nnumber ${NUMBER} is Grater than 10"
fi
