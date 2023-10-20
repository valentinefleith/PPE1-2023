#!/usr/bin/bash

if [ $# -ne 2 ]; then
	echo "Usage : ./compte_entites_args.sh ENTITE ANNEE"
	exit
fi

ENTITE=$1
ANNEE=$2

FORMAT_ENTITE="(Person|Event|Organization|Hour|Date|Location|Product)"
if [[ ! $ENTITE =~ $FORMAT_ENTITE ]]; then
	echo "L'entité n'existe pas."
	exit
fi

FORMAT_ANNEE="201(6|7|8)"
if [[ ! $ANNEE =~ $FORMAT_ANNEE ]]; then
	echo "L'année est incorrecte."
	exit
fi

grep "$ENTITE" ann/$ANNEE/*/*.ann | wc -l
