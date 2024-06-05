#!/bin/bash

a=abcd

if  [ $a = "abc" ]
then
echo 'OK'
fi

if [ $a != 'abc' ]
then
echo 'NOTOK'
fi
