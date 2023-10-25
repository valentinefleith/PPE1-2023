#!/usr/bin/env bash

if [ -z $1 ]; then
	echo "Usage : ./miniprojet.sh CHEMIN"
	exit
fi

CHEMIN=$1
COUNT=1

while read -r line;
do
	HTTP_CODE=$(curl -s -I ${line} | grep "HTTP" | egrep -o "[[:digit:]]{3}");
	echo -e "${COUNT}\t${HTTP_CODE}\t${line}";
	((COUNT++));
done < "$CHEMIN"

