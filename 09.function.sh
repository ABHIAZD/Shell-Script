#!/bin/bash

DATE=$(date +%F)
SCRIPTNAME=$0
LOGFILE=/tmp/$SCRIPTNAME-$DATE.log

validate(){
    if [ $1 -ne 0 ]
then 
echo "$2 not installation"
exit 1
else
echo "$2 succeeded"
fi
}

userid=$(id -u)

if [ $userid -ne 0 ]
then
echo "error: please do it as root user"
exit 1
fi
yum install mysql -y
validate $? "installing mysql" &>>$LOGFILE
yum install postfix -y
validate $? "installing postfix" &>>$LOGFILE