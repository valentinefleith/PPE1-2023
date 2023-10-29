#!/usr/bin/env bash

if [ $# -ne 1 ] || [ ! -f $1 ]; then
	echo "Usage : ./miniprojet.sh CHEMIN_VERS_URLS"
	exit
fi

CHEMIN=$1
COUNT=1

while read -r URL;
do
	HTTP_CODE=$(curl -s -I ${URL} | grep "HTTP" | egrep -o "[[:digit:]]{3}");
	IS_CORRECTED=$(curl -s -I -L ${URL} | grep "HTTP" | egrep -o "200");
	if [ $HTTP_CODE -eq "301" ] && [ $IS_CORRECTED = "200" ]; then
		HTTP_CODE="200"
		NEW_URL=$(curl -s -I -L ${URL} | grep "location:" | sed "s/location: //g" | sed "s/\r//g")
		URL=$NEW_URL
	fi

	CHARSET=$(curl -s -I -o /dev/null -w "%{content_type}" ${URL} | egrep -o "charset=([[:alnum:]]|-)+" | sed "s/charset=//g")
	echo -e "${COUNT}\t${HTTP_CODE}\t${URL}\t${CHARSET}";
	((COUNT++));
done < "$CHEMIN"

