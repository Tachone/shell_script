#!/bin/bash

clear
echo "enter [y/n]:"
read a
case $a in
    y|Y|Yes|YES)
        echo "You enter $a"
        ;;
    n|N|NO|no)
        echo "You enter $a"
        ;;
    *)
        echo "Error"
        ;;
esac

