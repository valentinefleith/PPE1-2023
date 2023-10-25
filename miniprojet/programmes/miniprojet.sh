#!/usr/bin/env bash

if [ -z $1 ]; then
	echo "Usage : ./compte_entites2.sh ENTITE"
	exit
fi

PATH=$1

while read -r line;
do
	echo "${line}";
done < "$PATH"
