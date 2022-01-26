#!/bin/bash
# unit-conversion2.sh
# Must have 'units' utility installed.

E_NOARG=70		# Exit code when command line args are missing.
E_TOOMANYARGS=71	# Exit code when too many command line args.

if [ $# -eq 0 ]
# Check if no args.
then
	echo "ERROR: Missing arguments!"
	echo "Usage: ./unit-conversion2.sh <Unit1> <Unit2> <quantity>"
	exit $E_NOARG
fi

if [ $# -ge 4 ]
# Check if too much args.
then
	echo "ERROR: Too many arguments!"
	echo "Usage: ./unit-conversion2.sh <Unit1> <Unit2> <quantity>"
	exit $E_TOOMANYARGS
fi

convert_units ()  # Takes as arguments the units to convert.
{
  cf=$(units "$1" "$2" | sed --silent -e '1p' | awk '{print $2}')
  # Strip off everything except the actual conversion factor.
  echo "$cf"
}  

Unit1=$1
Unit2=$2
cfactor=`convert_units $Unit1 $Unit2`
quantity=$3

result=$(echo $quantity*$cfactor | bc)

echo "There are $result $Unit2 in $quantity $Unit1."

#  What happens if you pass incompatible units,
#+ such as "acres" and "miles" to the function?

exit 0
