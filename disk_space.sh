#!/bin/bash


CHECK(){
    echo "you dont have root privileges, plese login or use root access"
    exit 1
}

LOGS_FOLDER="/var/logs/expense"
SCRIPT_NAME="(echo $0 | awk -F "." '{print 1F}')"
TIMESTAMP=$(date +%Y-%h-%m-%H-%M-%S)
LOGFILE_NAME=($LOGS_FOLDER/$SCRIPT_NAME/$TIMESTAMP-app.log)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "your $2 is failed"

    else
        echo "your $2 is SUCCESS"
    fi

}


if [ $? -ne 0 ]
then
    CHECKED
else
    echo " You have root access, you can proceed further"

fi

