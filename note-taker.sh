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

file_name=""
if [ "$1" == "weekly-report" ]; then
  file_name=$(date "+%m-%d-%y-weekly-report.txt")
else
  file_name=$(date "+%m-%d-%y.txt")
fi

FULL_PATH=~/Documents/notes/${YEAR}/${MONTH}/${file_name}
TITLE=$(date "+%A, %B %d, %Y")

if [ "$1" == "weekly-report" ]; then
  echo "Weekly Report for ${TITLE}" > $FULL_PATH
else
  echo "Notes for ${TITLE}" > $FULL_PATH
fi

open $FULL_PATH
