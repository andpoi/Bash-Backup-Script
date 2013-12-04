#!/bin/bash

USERD=/Volumes/data/Employees/$USER
BACKUPLOC=/Users/$USER/Dropbox/my-backup-$(date +%Y%m%d).tgz

tar -czf $BACKUPLOC /Volumes/data/Employees/$USER

echo "Backup created at" $BACKUPLOC
echo "Created from files located at" $USERD "for user" $USER