#!/usr/bin/bash

YEAR=2017
MONTH=12
for ((i=1;i<=MONTH;i++)); do
	if [ "$i" -lt 10 ]
	then
		mkdir "0$i"
		mv ${YEAR}_0${i}* "0${i}"
	else
		mkdir "$i"
		mv ${YEAR}_${i}* "${i}"
	fi
done
