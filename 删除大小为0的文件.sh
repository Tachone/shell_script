#!/bin/bash

for filename in `ls`
do 
        a=$(ls -l $filename | awk '{print $5}')
        if ((a==0));then
            rm $filename
        fi
done



