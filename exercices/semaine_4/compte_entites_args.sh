#!/usr/bin/bash

if [ -z $2 ]
then
		echo "Usage : ./compte_entites_args.sh ENTITE ANNEE"
		exit
fi

ENTITE=$1
ANNEE=$2
grep "$ENTITE" ann/$ANNEE/*/*.ann | wc -l
