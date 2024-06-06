#!/bin/bash
source components/common.sh

echo "Installing mongo"

yum install mongodb-org -y
systemctl start mongod
