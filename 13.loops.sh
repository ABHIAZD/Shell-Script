DATE=$(date +%F)
LOGDIR=/tmp/test
SCRIPT_NAME=$0
LOGFILE=$LOGDIR/$SCRIPT_NAME-$DATE.log
USERID=$(id -u)


if [ USERID -ne 0 ]
then
    echo "please run thiss script root user"
    exit 1
fi

for i in $@
do
    yum install $i -y
done
