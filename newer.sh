#!/bin/bash

# This program return the name of the newest file from a list of files

most_recent_date=0
most_recent_filename=""

if test $# -eq 0; then
	echo "No files to analyse"
else
	echo "File Information:"
	
	for i do
		if test -f $i; then
			echo $i was created on $(date -r $i)
			file_date_seconds=$(date -r $i +%s)
			if test $file_date_seconds -gt $most_recent_date; then
				most_recent_date=$file_date_seconds
				most_recent_filename=$i
			fi
		else
			echo "$i does not exist"
		fi
	done
	
	echo "-------------------"
	echo "Most Recent File Information:"
	echo "Most recent file is:" $most_recent_filename
	echo $most_recent_filename "was last edited on:" $(date -r $most_recent_filename)
fi
