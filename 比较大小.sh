#!/bin/bash

echo "please input the two numbers:"
read a
read b
if (($a==$b));then
    echo "a = b"
elif (($a>$b));then
    echo "a > b"
else
    echo "a < b"
fi










