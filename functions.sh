#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
echo "please use the root user access"
exit 1
else
echo "your using root access" 
fi
