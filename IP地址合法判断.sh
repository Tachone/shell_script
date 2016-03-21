#!/bin/bash

CheckIPAddr()
{
   #IP地址需由三个.分隔且均是数字
   echo $1 | grep "^[0-9]\{1,3\}\.\([0-9]\{1,3\}\.\)\{2\}[0-9]\{1,3\}$" > /dev/null
   if [ $? -ne 0 ];then
       return 1
   fi
   ipaddr=$1
   a=`echo $ipaddr | awk -F. '{print $1}'`
   b=`echo $ipaddr | awk -F. '{print $2}'`
   c=`echo $ipaddr | awk -F. '{print $3}'`
   d=`echo $ipaddr | awk -F. '{print $4}'`
   for num in $a $b $c $d
   do
       if [ $num -gt 255 -o $num -lt 0 ];then
           return 1
       fi
   done
   return 0
}

if [ $# -ne 1 ];then
    echo "Usage :$0 ipaddr."
    exit
else
    CheckIPAddr $1
    ans=$?
    if [ $ans -eq 0 ];then
        echo "legal ip address."
    else
        echo "unlegal ip address."
    fi

fi



