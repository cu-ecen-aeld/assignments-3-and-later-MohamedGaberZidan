#!/bin/bash




filesdir=$1

searchstr=$2

if [ $# -eq 2 ]; then
	if [ -d "$1" ]; then
		if [ -n $2 ]
		then
			x=$(ls -R "$filesdir" | wc -l)
			y=$(ls -R "$filesdir"| grep -c "$searchdir")
			echo "The number of files are $x and the number of matching lines are $y"
		else
			echo "Sring is empty"

		fi
	else
		echo "filesdir does not represent a directory on the filesystem"
	fi 
	
	

else
	echo "the parameters above were not specified"

fi
