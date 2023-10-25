#!/usr/bin/env bash

if [ $# -ne 1 ] || [ ! -f $1 ]; then
	echo "Usage : ./miniprojet.sh CHEMIN"
	exit
fi

CHEMIN=$1
COUNT=1

while read -r line;
do
	HTTP_CODE=$(curl -s -I ${line} | grep "HTTP" | egrep -o "[[:digit:]]{3}");
	CORRECT_301=$(curl -s -I -L ${line} | grep "HTTP" | egrep -o "[[:digit:]]{3}");
	IS_CORRECTED=$($CORRECT_301 | grep "200")
	if [ $HTTP_CODE -eq "301" ] && [ $IS_CORRECTED = true ]; then
		HTTP_CODE="200"
	fi
	echo -e "${COUNT}\t${HTTP_CODE}\t${line}";
	((COUNT++));
done < "$CHEMIN"

