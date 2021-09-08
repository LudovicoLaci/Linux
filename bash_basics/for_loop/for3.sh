###################################################################
#	Script Name: for3 	                                  #
#	Description: Reading Array variable	                  #
#	Author: LudLac						  #
###################################################################

#!/bin/bash

favourite='Pink'

ColorList=("Blue Green Pink White Red")

for color in $Colorlist
do
	if [ $color == $favourite ]
	then
		echo "My favourite color is $color"
	fi
done

