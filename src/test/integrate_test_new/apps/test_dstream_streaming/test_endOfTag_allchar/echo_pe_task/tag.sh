#!/bin/bash
i=0
while read line
do 
    i=$[$i+1]
    tg=$[$i%3]
    case $tg in
    0) echo "Tag10123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!\"#$%&\\'()*+,-./:;<=>?@[]^_`{}~ \t${line}" ;;
    1) echo "Tag20123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!\"#$%&\\'()*+,-./:;<=>?@[]^_`{}~ \t${line}" ;;
    2) echo $line ;;
    *) echo "Error!!"
    esac
done
