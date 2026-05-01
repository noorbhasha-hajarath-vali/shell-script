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

INSTALLED () {
    if [$1 -ne 0]; then
        echo "$2 package not yet installed, installing now"
        dnf install $2 -y
    else
        echo "$2 Already Installed"
}

dnf list installed httpd 
INSTALLED $? httpd
VALIDATION $? httpd

dnf list installed nginx
INSTALLED $? nginx
VALIDATION $? nginx

dnf list installed docker
INSTALLED $? docker
VALIDATION $? docker
