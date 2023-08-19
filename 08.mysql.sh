#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
echo "error: please do it as root user"
exit 1
fi
yum install mysql -y