#!/bin/bash

USERD=/Volumes/data/Employees/$USER
BACKUPLOC=/Users/$USER/Dropbox/my-backup-$(date +%Y%m%d).tgz
SEP="========================================================================"

if [ -f $BACKUPLOC ]
	then
		echo $SEP
		echo "The file" $BACKUPLOC "already exists...."
		echo "Exiting this program so you don't have to"
		echo $SEP
		exit
	else
		echo $SEP
		echo "You haven't backed up yet today.... Let's do that right now"
fi

echo "Currently tarballing your files and moving them to" $BACKUPLOC
tar -czf $BACKUPLOC $USERD

echo "Backup created at" $BACKUPLOC
echo "Created from files located at" $USERD "for user" $USER
echo $SEP