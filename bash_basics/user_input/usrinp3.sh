###################################################################
#	Script Name: usrinp3 	                                  #
#	Description: Using read command with options: -p & -s     #
#	Author: LudLac						  #
###################################################################

#!/bin/bash

read -p 'Username: ' user
read -sp 'Password: ' pass

if (( $user == "admin" && $pass == "12345" ))
then
	echo -e "\nSuccesful login"
else
	echo -e "\nUnsuccesful login"
fi

