###################################################################
#	Script Name: for5	                                  #
#	Description: finding odd & even number		          #
#	Author: LudLac						  #
###################################################################

#!/bin/bash


for (( n=1; n<=5; n++ ))
do
	if (( $n%2==0 ))
	then
		echo "$n is even"
	else
		echo "$n is odd"
	fi
done
