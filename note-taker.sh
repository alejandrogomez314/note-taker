#!/usr/bin/env bash

# Note-taker: This script create a new plain-text node and organizes it according to date.

cli_help() {
 echo "
Note-taker v1
By Alejandro Gomez
https://github.com/alejandrogomez314/note-taker

Usage: note-taker [command]

Commands:
new             Create a new note for the day
weekly-effort   Create an effort reporting week note
search          Search for a word in notes
"
    exit 1
}

case "$1" in
  new|n)
NOTES=~/Documents/notes
if [ ! -d $NOTES ]; then
    mkdir $NOTES
fi
YEAR=$(date +%Y)
if [ ! -d $NOTES/"${YEAR}" ]; then
    mkdir $NOTES/"${YEAR}"
fi
MONTH=$(date +%B)
if [ ! -d $NOTES/"${YEAR}"/"${MONTH}" ]; then
	mkdir $NOTES/"${YEAR}"/"${MONTH}"
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
  echo "Weekly Report for ${TITLE}" > "$FULL_PATH"
else
  echo "Notes for ${TITLE}" > "$FULL_PATH"
fi

open "$FULL_PATH"
;;
  *)
    cli_help
    ;;
esac
