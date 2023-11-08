#!/usr/bin/env bash

if [ $# -ne 1 ] || [ ! -f $1 ]; then
	echo "Usage : ./exercice1.sh TEXT.txt"
	exit
fi

TEXT=$1

egrep -o "\b[[:alpha:]]+\b" $TEXT | tr "[[:upper:]]" "[[:lower:]]"
