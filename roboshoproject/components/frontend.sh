#!/bin/bash

rm -f /tmp/roboshop.log

echo "Installing Nginx"

sudo amazon-linux-extras install nginx1 -y >>/tmp/roboshop.log


