#!/bin/bash

USER_ID=$(id -u)

if [ ${USER_ID} -ne 0 ]; then
    echo "Error: User don't have sudo access, still you can run with sudo"
    exit 1
fi


VALIDATE() {
    PACKAGE_NAME=$1

    dnf list installed $PACKAGE_NAME &>/dev/null

    if [ $? -ne 0 ]; then
        echo "$PACKAGE_NAME not installed, installing..."
    
        dnf install $PACKAGE_NAME -y
        if [ $? -ne 0 ]; then
            echo "Error: $PACKAGE_NAME package installation failed, retry later"
            exit 1
        else
            echo "Success: $PACKAGE_NAME package installed successfully"
        fi
    else
        echo "Success: $PACKAGE_NAME package is already installed"
    fi
}

VALIDATE "tree"
VALIDATE "nginx"
VALIDATE "docker"