#!/usr/bin/bash

cd ann
mkdir 2016
mv `ls | grep '2016'` 2016
mkdir 2017
mv `ls | grep '2017'` 2017
mkdir 2018
mv `ls | grep '2018'` 2018

cd ../txt
mkdir 2016
mv `ls | grep '2016'` 2016
mkdir 2017
mv `ls | grep '2017'` 2017
mkdir 2018
mv `ls | grep '2018'` 2018
