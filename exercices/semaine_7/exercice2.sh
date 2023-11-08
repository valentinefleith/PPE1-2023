#!/usr/bin/env bash

if [ -z $1 ] || [ ! -f $1 ]; then
	echo "Usage : ./exercice2.sh TEXT.txt"
	exit
fi

TEXT=$1
FORMAT_NOMBRE="[[:digit:]]+"
if [ -z $2 ] || [[ ! $2 =~ $FORMAT_NOMBRE ]]; then
	./exercice1.sh ${TEXT} | sort | uniq -c | sort -nr | head -n 25
	exit
fi


NOMBRE=$2

./exercice1.sh ${TEXT} | sort | uniq -c | sort -nr | head -n $NOMBRE


