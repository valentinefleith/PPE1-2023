#!/usr/bin/bash
mkdir txt
mkdir ann 
mkdir img 

find -name '*.txt' -exec mv {} txt \;
find -name '*.ann' -exec mv {} ann \;
find -name '*.jpg' -exec mv {} img \;
find -name '*.bmp' -exec mv {} img \;
