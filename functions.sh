#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
echo "please use the root user access"
exit 1
else
echo "your using root access" 
fi

dnf list installed nginx
if [ $? -ne 0 ]
then
echo "nginx is not installed "
exit 1
dnf install nginx -y
validate $? "nginx"
else
echo "nginx is already installed"
fi
validate ()
{
    if [ $1 -ne 0 ]
    then
     echo " $2 is not installed "
     exit 1
   else
   echo "$2 is successfully installed"
   fi

}

dnf list installed mysql
if [ $? -ne 0 ]
then
echo " mysql is not installed"
exit 1
dnf install mysql -y
validate $? "myql"
else
echo " mysql is not installed due to error"
fi