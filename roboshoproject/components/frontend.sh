#!/bin/bash

LOG_FILE=/tmp/roboshop.log

rm -f /tmp/roboshop.logLOG_FILE

echo "Installing Nginx"

sudo amazon-linux-extras install nginx1 -y &>>LOG_FILE

systemctl start nginx

systemctl enable nginx
systemctl status nginx

echo 'clean old content'
rm -rf /usr/share/nginx/html/* &>>LOG_FILE

curl -s -l -o https://www.free-css.com/assets/files/free-css-templates/download/page296/healet.zip
