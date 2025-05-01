#!/bin/sh

filesdir=$1
searchstr=$2

if [ $# -eq 2 ]; then
	if [ -d "$filesdir" ]; then
		if [ -n "$searchstr" ]; then
			x=$(ls "$filesdir" | wc -l)
			y=$(grep -r "$searchstr" "$filesdir" | wc -l)
			echo "The number of files are $x and the number of matching lines are $y"
		else
			echo "String is empty"
			exit 1
		fi
	else
		echo "filesdir does not represent a directory on the filesystem"
		exit 1
	fi 
else
	echo "The parameters above were not specified"
	exit 1
fi

