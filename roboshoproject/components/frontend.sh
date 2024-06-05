#!/bin/bash

LOG_FILE=/tmp/roboshop.log

rm -f /tmp/roboshop.log

echo "Installing Nginx"

sudo amazon-linux-extras install nginx1 -y >>LOG_FILE

systemctl start nginx

systemctl enable nginx
systemctl status nginx

