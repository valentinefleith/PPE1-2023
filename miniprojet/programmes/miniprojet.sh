#!/usr/bin/env bash

if [[ $# -ne 1 ]];
then
	echo "On veut exactement un argument au script."
	exit
fi

URLS=$1

if [ ! -f $URLS ]
then
	echo "On attend un fichier, pas un dossier"
	exit
fi

OUTPUT_FILE="tableaux/table.html"
echo "<html>
<head>
<meta charset='UTF-8'/>
</head>
<body>
<table>
<tr><th>Ligne</th><th>URL</th><th>HTTP</th><th>encoding</th>
" > $OUTPUT_FILE
lineno=1
while read -r URL
do
	response=$(curl -s -I -L -w "%{http_code}" -o /dev/null $URL)
	encoding=$(curl -s -I -L -w "%{content_type}" -o /dev/null $URL | grep -P -o "charset=\S+" | cut -d"=" -f2 | tail -n 1)
	echo -e "$lineno\t$URL\t$response\t$encoding"
	echo "<tr>
	<td>$lineno</td><td>$URL</td><td>$HTTP</td><td>$response</td><td>$encoding</td>
	</tr>
	" >> $OUTPUT_FILE
	lineno=$(expr $lineno + 1)
done < "$URLS"

echo "</table></body></html>" >> $OUTPUT_FILE
