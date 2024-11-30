#!/bin/bash

if [ $# -eq 2 ]
then
	if [ $# -eq 2 ]
	then
		mkdir tmp
		if [ -d "tmp" ]
		then
			echo $1
			echo $2 > "$1"
			exit 0
		else
			echo " String is empty \n"
			exit 1
		fi
	else
		echo	"$1\n"
		echo  " File directory is not exist \n"
		exit 1
	fi
else 
	echo " Arguments have to be 2"
	exit 1
fi
