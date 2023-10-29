#!/usr/bin/env bash

if [ $# -ne 1 ] || [ ! -f $1 ]; then
	echo "Usage : ./miniprojet.sh CHEMIN_VERS_URLS"
	exit
fi

CHEMIN=$1
COUNT=1

while read -r line;
do
	HTTP_CODE=$(curl -s -I ${line} | grep "HTTP" | egrep -o "[[:digit:]]{3}");
	IS_CORRECTED=$(curl -s -I -L ${line} | grep "HTTP" | egrep -o "200");
	if [ $HTTP_CODE -eq "301" ] && [ $IS_CORRECTED = "200" ]; then
		HTTP_CODE="200"
		NEW_URL=$(curl -s -I -L ${line} | grep "location:" | sed "s/location: //g")
		line=$NEW_URL
	fi
	echo -e "${COUNT}\t${HTTP_CODE}\t${line}";
	((COUNT++));
done < "$CHEMIN"

