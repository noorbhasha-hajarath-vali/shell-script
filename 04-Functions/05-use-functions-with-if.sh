#!/bin/bash

USER_ID=$(id -u)

if [ ${USER_ID} -ne 0 ]; then
    echo "Error: User don't have sudo access, still you can run with sudo"
    exit 1
fi

VALIDATE(){
    dnf install $1 -y
    if [ $? -ne 0 ]; then
        echo "Error: $1 installation failed, try again later"
        exit 1
    else
        echo "Success: $1 successfully installed"
    fi
}

dnf list installed tree
if [ $? -ne 0 ]; then
    echo "tree not installed, installing now"
    VALIDATE tree
else
    echo "tree already installed"
fi

dnf list installed nginx
if [ $? -ne 0 ]; then
    echo "nginx not installed, installing now"
    VALIDATE nginx
else
    echo "nginx already installed"
fi

dnf list installed docker
if [ $? -ne 0 ]; then
    echo "docker not installed, installing now"
    VALIDATE docker
else
    echo "docker already installed"
fi