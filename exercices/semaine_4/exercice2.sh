#!/usr/bin/bash

if [ -z $3 ]
	then
		echo "Usage : ./exercice2.sh ANNEE MOIS NOMBRE"
		exit
fi

ANNEE=$1
MOIS=$2
NOMBRE=$3

grep "Location" ann/$ANNEE/$MOIS/*.ann | cut -f 3 | sort | uniq -c | sort -nr | head -n $NOMBRE
