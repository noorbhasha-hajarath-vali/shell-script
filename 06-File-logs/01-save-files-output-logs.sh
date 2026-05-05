#!/bin/bash

USER_ID=$(id -u)
YELLOW="\e[33m"
RESET="\e[0m"
LOG_DIR="/var/log/shell-script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1) # deleting .sh extension
LOG_FILE="$LOG_DIR/$SCRIPT_NAME.log"

if [ ${USER_ID} -ne 0 ]; then
    echo "Error: User doesn't have root privileges, please run with sudo" | tee -a "$LOG_FILE"
    exit 1
fi

mkdir -p "$LOG_DIR"
echo "Script started executing at $(date)"  | tee -a "$LOG_FILE"

VALIDATE(){
    dnf install "$1" -y &>>"$LOG_FILE"
    if [ $? -ne 0 ]; then
        echo "Error: $1 installation failed, try again later"  | tee -a "$LOG_FILE"
        exit 1
    else
        echo "Success: $1 successfully installed" | tee -a "$LOG_FILE"
    fi
}

INSTALLATION(){
    PKG_NAME=$1

    dnf list installed "$PKG_NAME" &>>"$LOG_FILE"
    if [ $? -ne 0 ]; then
        echo "$PKG_NAME not installed, installing now" | tee -a "$LOG_FILE"
        VALIDATE "$PKG_NAME"
    else
        echo "$PKG_NAME already installed ... $YELLOW SKIPPING $RESET" | tee -a "$LOG_FILE"
    fi
}

INSTALLATION tree
INSTALLATION nginx
INSTALLATION docker