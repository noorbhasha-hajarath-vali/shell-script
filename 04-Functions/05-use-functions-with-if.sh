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

VALIDATE tree

VALIDATE nginx

VALIDATE git