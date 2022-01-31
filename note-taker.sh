#!/bin/bash
# this script create a new plain-text node and organizes it
# according to date.
NOTES=~/Documents/notes
if [ ! -d $NOTES ]; then
	mkdir $NOTES
fi
YEAR=$(date +%Y)
if [ ! -d $NOTES/${YEAR} ]; then
    mkdir $NOTES/${YEAR}
fi
MONTH=$(date +%B)
if [ ! -d $NOTES/${YEAR}/${MONTH} ]; then
	mkdir $NOTES/${YEAR}/${MONTH}
fi
file_name=$(date "+%m-%d-%y.txt")
FULL_PATH=~/Documents/notes/${YEAR}/${MONTH}/${file_name}
TITLE=$(date "+%A, %B %d, %Y")
echo "Notes for ${TITLE}" > $FULL_PATH

open $FULL_PATH
