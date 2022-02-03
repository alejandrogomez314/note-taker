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
weekly-report   Create a weekly reporting note highling big achievements of weeek
search          Search for a word in notes
"
    exit 1
}

WORKDIR="$HOME/Documents/note-taker"
case "$1" in
  new|n)
    "$WORKDIR/commands/new"
    ;;
  weekly-report|wr)
    "$WORKDIR/commands/weekly-report"
    ;;
  *)
    cli_help
    ;;
esac
