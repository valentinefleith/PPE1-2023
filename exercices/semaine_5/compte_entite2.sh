#!/usr/bin/bash

if [ -z $1 ]; then
	echo "Usage : ./compte_entites2.sh ENTITE"
	exit
fi

ENTITE=$1

FORMAT_ENTITE="(Person|Event|Organization|Hour|Date|Location|Product)"
if [[ ! $ENTITE =~ $FORMAT_ENTITE ]]; then
	echo "L'entité n'existe pas."
	exit
fi

for ((YEAR=2016;YEAR<=2018;YEAR++)); do
	echo "Nombre de $ENTITE pour l'annee $YEAR : "
	./compte_entites_args.sh $ENTITE $YEAR
done
