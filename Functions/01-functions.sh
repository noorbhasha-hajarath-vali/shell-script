#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "ERROR: Please run the scripts with root priveleges"
    exit 1
fi

VALIDATION () {
    if [$? -ne 0]; then
        echo "ERROR: $2 package installation Failed"
        exit 1
    else
        echo "SUCCESS: $2 package installed successfully"
    fi
}

INSTALLED () {
    if [$? -ne 0]; then
        dnf install $1 -y
        VALIDATION $1

    else
        echo "$2 Already Installed"
    fi
}

dnf list installed httpd
INSTALLED httpd

dnf list installed nginx
INSTALLED nginx

dnf list installed docker
INSTALLED docker