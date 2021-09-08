###################################################################
#	Script Name: for6 	                                  #
#	Description: Reading file content	                  #
#	Author: LudLac						  #
###################################################################

#!/bin/bash


day_counter=1

for day in `cat weekday.txt`
do
	echo "Weekday $day_counter: $day"
	((i++))
done
