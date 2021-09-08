###################################################################
#	Script Name: elif example 		                  #
#	Description: Using else if statement 		          #
#	Author: LudLac						  #
###################################################################

#!/bin/bash

read -p "Enter your lucky number: " n

if [ $n -eq 101 ]
then
	echo "You got 1st prize"
elif [ $n -eq 501 ]
then
	echo "You got 2nd prize"
elif [ $n -eq 999 ]
then
	echo "You got 3rd prize"
else
	echo "Sorry, try for the next time"
fi


