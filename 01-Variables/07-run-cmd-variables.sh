#!/bin/bash

# run commands within the variables

DATE=$(date +%Y-%m-%d)

echo "My cousin born today, i.e. ${DATE}"
echo ""

CURRENT_PATH=$(pwd)

echo -e "Current path is:\n${CURRENT_PATH}"
echo ""

FILES_LIST=$(ls)

echo -e "List of files in the directory is: \n${FILES_LIST}"