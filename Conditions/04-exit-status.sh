#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Error: User has no root access, run with sudo"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Error: Failed to Installing mysql"
    exit 1
else
    echo "Success: mysql installed successfully"
fi
