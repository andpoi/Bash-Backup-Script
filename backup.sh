#!/bin/bash

USERD=/Volumes/data/Employees/$USER
BACKUPLOC=/Users/$USER/Dropbox/my-backup-$(date +%Y%m%d).tgz
TEMPDIR=/Users/$USER/bashbackup/my-backup-$(date +%y%m%d).tgz

SEP="========================================================================"

if [ -f $BACKUPLOC ]
	then
		echo $SEP
		echo "The file" "'"$BACKUPLOC"'" "already exists...."
		echo "Exiting this program so you don't have to"
		echo $SEP
		exit
	else
		echo $SEP
		echo "You haven't backed up yet today.... Let's do that right now"
fi

echo "Currently tarballing your files and moving them to" $TEMPDIR
tar -czf $TEMPDIR $USERD

echo "Backup created at" $TEMPDIR
cp $TEMPDIR $BACKUPLOC
echo "Copied to" $BACKUPLOC
rm $TEMPDIR
echo "Removed temporary files"
echo "Created from files located at" $USERD
echo $SEP