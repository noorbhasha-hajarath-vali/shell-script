#!/bin/bash

USER_ID=$(id -u)

if [ ${USER_ID} -ne 0 ]; then
    echo "Error: User doesn't have root permissions, use sudo"
else
    echo echo "Success: User have root access, lets continue"
fi