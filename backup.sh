#!/bin/bash

USERD=/Volumes/data/Employees/$USER
BACKUPLOC=/Users/$USER/Dropbox/my-backup-$(date +%Y%m%d).tgz

echo "Currently tarballing your files and moving them to" $BACKUPLOC
tar -czf $BACKUPLOC $USERD

echo "Backup created at" $BACKUPLOC
echo "Created from files located at" $USERD "for user" $USER