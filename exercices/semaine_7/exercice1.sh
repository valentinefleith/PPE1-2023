#!/usr/bin/env bash

TEXT=$1

egrep -o "\b[[:alpha:]]+\b" $TEXT 
