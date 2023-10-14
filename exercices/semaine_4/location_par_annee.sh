#!/usr/bin/bash

for ((year=2016;year<=2018;year++)); do
	echo "Nombre de location pour l'annee $year"
	grep "Location" ann/$year/*/*.ann | wc -l
done
