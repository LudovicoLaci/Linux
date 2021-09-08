###################################################################
#	Script Name: for1	                                  #
#	Description: Basic 10 rep for loop			  #
#	Author: LudLac						  #
###################################################################

#!/bin/bash


for (( counter=10; counter>0; counter-- ))
do
	echo -n "$counter"
done
printf "\n"
