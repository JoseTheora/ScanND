#!/bin/bash
if [ "$1" == "" ] 
then
echo "Usage : ./ScanND.sh [IP] [filename]"

else
echo "NMAP"
nmap $1 > $2.txt
echo "DIRB" 
dirb http://$1/ | grep '==>\|+' >> $2.txt
echo "SCAN FINISH" 
fi
