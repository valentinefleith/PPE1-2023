#!/usr/bin/bash

if [ $# -ne 3 ]; then
	echo "Usage : ./exercice2.sh ANNEE MOIS NOMBRE"
	exit
fi

ANNEE=$1
MOIS=$2
NOMBRE=$3

FORMAT_ANNEE="201(6|7|8)"
FORMAT_MOIS="(0[1-9]|1[0-2])"
FORMAT_NOMBRE="[[:digit:]]+"

if [[ ! $ANNEE =~ $FORMAT_ANNEE || ! $MOIS =~ $FORMAT_MOIS || ! $NOMBRE =~ $FORMAT_NOMBRE ]]; then
	echo "Usage : ./exercice2.sh ANNEE MOIS NOMBRE"
	exit
fi

grep "Location" ann/$ANNEE/$MOIS/*.ann | cut -f 3 | sort | uniq -c | sort -nr | head -n $NOMBRE
