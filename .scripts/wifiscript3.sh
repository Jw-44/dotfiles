#! /bin/bash
iwctl station wlan0 show | grep network | awk '{
    print $3
}'
#echo " "
