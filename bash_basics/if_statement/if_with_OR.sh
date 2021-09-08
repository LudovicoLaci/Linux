###################################################################
#	Script Name: if_with_OR 	                          #
#	Description: Using if statement with OR logic             #
#	Author: LudLac						  #
###################################################################

#!/bin/bash

read -p "Enter any number" n

if [[ ($n -eq 15 || $n -eq 45) ]]
then
	echo "You won the game"
else
	echo "You lost the game"
fi
