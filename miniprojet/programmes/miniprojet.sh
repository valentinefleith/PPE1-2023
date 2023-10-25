#!/usr/bin/env bash

if [ -z $1 ]; then
	echo "Usage : ./miniprojet.sh CHEMIN"
	exit
fi

PATH=$1
COUNT=1

while read -r line;
do
	echo -e "${COUNT}\t${line}";
	((COUNT++));
done < "$PATH"
