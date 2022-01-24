#!/bin/bash

# a friendly script to greet users

if [ $# -eq 0 ]
then
	echo "Please enter at least one user to greet."
	exit 1
else
	for username in $@
	do
		echo $username | grep "^[A-Za-z]*$" > /dev/null
		if [ $? -eq 1 ]
		then
			echo "ERROR: Names must only contains letters."
			exit 2
		else
			echo "Hello $username!"
		fi
	done
	exit 0
fi
