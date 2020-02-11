#!/bin/bash
# Script that displays a report about a specific directory  
# Avnika Manaktala

#Calculations for Statistics
files=`ls -1 $1 | wc -l`
names=`find $1 -printf '%u\n' | sort | uniq`
size=`du -sh $1`
Recentfile=`ls -lt $source | grep ^- | head -1 | awk '{ print $9 }'`
largestfile=`ls -lS $source | grep ^- | head -1 | awk '{ print $9 }'`

#Display of Statistics
echo Number of files or directories in directory: $files
echo Users who own files in directory: $names
echo Size of directory: $size
echo Most recently accessed file: $Recentfile
echo Largest file: $largestfile
