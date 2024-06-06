#!/bin/bash

source components/common.sh

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

wget https://www.free-css.com/assets/files/free-css-templates/download/page296/healet.zip &>>LOG_FILE

unzip -o healet* &>>LOG_FILE

cp -r healet-html* /usr/share/nginx/html/index.html &>>LOG_FILE
