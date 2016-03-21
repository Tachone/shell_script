#!/bin/bash

ifconfig | grep "inet 地址:" | awk '{print $2}' | sed 's/地址:'//g

