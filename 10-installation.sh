#!/bin/bash

USER=$(id -u)

if [ USER -ne 0 ]
then 
    echo "Please use root user for installations"
    exit 1
fi 
