#!/bin/bash

userid=$(id -u)
validate(){
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
validate $? "installing mysql"
yum install postfix -y
validate $? "installing postfix"