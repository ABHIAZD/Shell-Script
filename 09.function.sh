#!/bin/bash

DATE=$(date +%F)
SCRIPTNAME=$0
Logfile=/tmp/$DATE.log


userid=$(id -u)
validate(){
    if [ $? -ne 0 ]
then 
echo "$2 not installation"
exit 1
else
echo "$2 succeeded"
fi
}
if [ $userid -ne 0 ]
then
echo "error: please do it as root user"
exit 1
fi
yum install mysql -y
validate $? "installing mysql" &>>$Logfile
yum install postfix -y
validate $? "installing postfix" &>>$Logfile