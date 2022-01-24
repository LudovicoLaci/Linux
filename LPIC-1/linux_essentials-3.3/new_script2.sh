#!/bin/bash

# A simple script to greet a single user.

if [ $# -eq 1 ]
then
	username=$1
	echo "Hello $username!"
	echo "Number of arguments: $#."
	exit 0
else 
	echo "Please enter only one argument."
	exit 1
fi
