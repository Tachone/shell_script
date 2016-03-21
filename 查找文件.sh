#!/bin/bash

echo "Enter a file name :"
read a
if [ -e /home/tach/$a ];then
    echo "the file is exist!"
else
    echo "the file is not exist!"
fi


