#!/bin/bash

USER_ID=$(id -u)

if [ ${USER_ID} -ne 0 ]; then
    echo "Error: User don't have sudo access, still you can run with sudo"
    exit 1
fi

dnf install tree -y

if [$? -ne 0]; then
    echo "Error: tree package installation failed, retry later"
    exit 1
else
    echo "Success: tree package installed successfully"
fi

dnf install nginx -y

if [$? -ne 0]; then
    echo "Error: nginx package installation failed, retry later"
    exit 1
else
    echo "Success: nginx package installed successfully"
fi 

dnf install httpd -y

if [$? -ne 0]; then
    echo "Error: nginx package installation failed, retry later"
    exit 1
else
    echo "Success: nginx package installed successfully"
fi