#! /bin/bash
NET=`iwctl station wlan0 show | grep network | awk '{
    print $3
}'`
#echo " "
#printf "\\357\\207\\253\\040\\n"
if [ -z $NET ];
then
    echo "  :  "
else
    printf "\\357\\207\\253\\040 $NET : \n"
fi
