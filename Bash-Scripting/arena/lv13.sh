#!/bin/bash
# Mission: Create a script that backs up a directory to a specified location and keeps only the last 5 backups.

source_directory="Arena"
dest_directory="backup"

# Check if directory exists
if [[ ! -d "$source_directory" ]]; then
    echo "Error: Configuration file '$config_directory' not found!"
    exit 1
fi

day=$(date +%A)
hostname=$(hostname -s)
archive="$hostname-$day.tgz"


tar czf $dest_directory/$archive $source_directory


echo "backup done!"

cd backup
ls -t | head -n -5 | xargs --no-run-if-empty rm

