#!/bin/bash
# Script for backing up files within a directory
# Avnika Manaktala


date=`date +%F` #Creating date display
mkdir ~/backups/$1_$date #Making new directory
cp -R ~/Documents/Rfiles/Lab04 ~/projectbackups/$1_$date #Copying existing files to new directory
echo Backup of $1 completed
