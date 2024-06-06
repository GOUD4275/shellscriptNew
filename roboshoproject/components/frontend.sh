#!/bin/bash

LOG_FILE=/tmp/roboshop.log

rm -f /tmp/roboshop.logLOG_FILE

echo "Installing Nginx"

sudo amazon-linux-extras install nginx1 -y &>>LOG_FILE

systemctl start nginx &>>LOG_FILE

systemctl enable nginx
systemctl status nginx &>>LOG_FILE
if [ $? -eq  0 ]
then
echo "Nginx Running"
fi

echo 'clean old content'
rm -rf /usr/share/nginx/html/* &>>LOG_FILE

wget https://www.free-css.com/assets/files/free-css-templates/download/page296/healet.zip

unzip -o healet*

cp -r healet-html* /usr/share/nginx/html/index.html >>LOG_FILE
