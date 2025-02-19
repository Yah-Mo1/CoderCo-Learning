#!/bin/bash

# Check if a directory path is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <directory_to_watch>"
  exit 1
fi

DIRECTORY_TO_WATCH="$1"
LOGFILE="/Users/yahmoham1/logfile.log"

# Ensure the log file exists
touch "$LOGFILE"

# Monitor the directory for changes
fswatch -o "$DIRECTORY_TO_WATCH" | while read event
do
  TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
  echo "$TIMESTAMP File change detected" >> "$LOGFILE"
done