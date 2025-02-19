#!/bin/bash

#Mission: Create a script that checks the disk space usage of a specified directory and sends an alert if the usage exceeds a given threshold.

# Purpose: Monitor Linux disk space and send an email alert to $ADMIN
ALERT=90 # alert level 
ADMIN="youremail" # dev/sysadmin email ID
df -H | grep -vE '^Filesystem|tmpfs|cdrom|map' | awk '{ print $5 " " $1 }' | while read -r output;
do
  echo "$output"
  usep=$(echo "$output" | awk '{ print $1}' | cut -d'%' -f1 )
  partition=$(echo "$output" | awk '{ print $2 }' )
  if [ $usep -ge $ALERT ]; then
    echo "Running out of space \"$partition ($usep%)\" on $(hostname) as on $(date)" |
    mail -s "Alert: Almost out of disk space $usep%" "$ADMIN"
  fi
done