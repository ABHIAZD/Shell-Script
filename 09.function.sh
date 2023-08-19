#!/bin/bash

DATE=$(date +%F)
SCRIPTNAME=$0
LOGFILE=/tmp/$SCRIPTNAME-$DATE.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
validate(){
    if [ $1 -ne 0 ]
then 
echo "$2 $R not installation $N"
exit 1
else
echo "$2 $R succeeded $N"
fi
}

userid=$(id -u)

if [ $userid -ne 0 ]
then
echo "error: please do it as root user"
exit 1
fi
yum install mysql -y &>>$LOGFILE
validate $? "installing mysql" 
yum install postfix -y &>>$LOGFILE
validate $? "installing postfix" 