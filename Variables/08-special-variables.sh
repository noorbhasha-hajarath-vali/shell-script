#!/bin/bash

# These are already existing in default, we just call them


# sh file-name Vali Noor Basha Hajarath --> it will show the arguements
echo "all variables passed through this script: $@"
echo ""

echo "all variables passed through this script: $*"
echo ""

# Total number of Arguments
echo "Number of Arguments: $#"
echo ""

# shows script File name you are executing
echo "Script name: $0"
echo ""

# Know current working directory
echo "Current Working Directory: $PWD"
echo ""

# User who is executing 
echo "User Name: $USER"
echo ""

# User's home directory
echo "User Home Directory: $HOME"
echo ""

# Process ID of the current executed script
echo "Process ID of the running script: $$"

sleep 20 &

echo ""
# Process ID of the current executed script
echo "Process ID of last command run in background is: $!"


echo ""
# Exist status of previous command
echo "Previous Command Exist status: $?"
