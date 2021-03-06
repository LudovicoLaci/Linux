#!/bin/bash

# counting letter occurrences in a text file.

MINARGS=2		# Script requires at least two arguments.
E_BADARGS=65
FILE=$1

let LETTERS=$#-1	# How many letters specified (as command-line args).

show_help(){
	echo
	echo "Usage: `basename $0` file letters"
	echo "Note: `basename $0` arguments are case sensitive."
	echo "Example: `basename $0` foobar.txt G n U L i N U x."
}


# Checks number of arguments.
if [ $# -lt $MINARGS ]; then
	echo
	echo "Not enought arguments."
	echo
	show_help
	exit $E_BADARGS
fi

# Checks if file exists.
if [ ! -f $FILE ]; then
	echo "File \"$FILE\" does not exist."
	exit $E_BADARGS
fi

# Counts letter occurrences.
for n in `seq $LETTERS`; do
	shift
	if [[ `echo -n "$1" | wc -c` -eq 1 ]]; then		# Checks arg.
		echo "$1" -\> `cat $FILE | tr -cd "$1" | wc -c` # Counting.
	else
		echo "$1 is not a single char."
	fi
done

exit $?
