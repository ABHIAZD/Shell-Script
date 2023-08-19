#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0]
then
echo "error: please do it as root user"
fi
yum install mysql -y