#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
echo"please use the root user access"
else
echo"your using root access" 
fi
