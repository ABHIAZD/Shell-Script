#!/bin/bash

userid=$(id -u)
VALIDATE(){
    if [ $? -ne 0 ]
then 
echo "not installation"
exit 1
else
echo " succeeded"
fi
}
if [ $userid -ne 0 ]
then
echo "error: please do it as root user"
exit 1
fi
yum install mysql -y
VALIDATE $?
yum install postfix -y
VALIDATE $?