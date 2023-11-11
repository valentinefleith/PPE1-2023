#!/usr/bin/env bash

if [ -z $1 ] || [ ! -f $1 ]; then
	echo "Usage : ./exercice3.sh TEXT.txt"
	exit
fi

TEXT=$1

./exercice1.sh ${TEXT} > words.txt
cp words.txt words2.txt
sed -i 1d words2.txt
echo -e '\n' | cat - words2.txt

paste words.txt words2.txt > result.txt
