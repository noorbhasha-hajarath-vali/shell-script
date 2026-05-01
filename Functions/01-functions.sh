#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "ERROR: Please run the scripts with root priveleges"
    exit 1
fi

VALIDATION () {
    if [$1 -ne 0]; then
        echo "ERROR: $2 package installation Failed"
        exit 1
    else
        echo "SUCCESS: $2 package installed successfully"
    fi
}

dnf install httpd -y
VALIDATION $? httpd


dnf install nginx -y
VALIDATION $? nginx

dnf install docker -y

VALIDATION $? docker
