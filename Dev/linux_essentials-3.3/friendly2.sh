#!/bin/bash

# a friendly script to greet users

if [ $# -eq 0 ]
then
	echo "Please enter at least one user to greet."
	exit 1
else
	echo -n "Hello $1"
	shift
	for username in $@
	do
		echo -n ", and $username"
	done
	echo "!"
	exit 0
fi
