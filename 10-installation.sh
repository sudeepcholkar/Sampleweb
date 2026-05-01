#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]
then 
    echo "Please use root user for installations"
    exit 1
fi 

#check status of mysql 
dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "Package mysql is not installed. going to install."
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "Could not proceed with intallation."
    else 
        echo "mysql installation success."
else
    echo "mysql is already installed."
fi


