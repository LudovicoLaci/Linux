###################################################################
#	Script Name: if_with_AND                                  #
#	Description: using if statement with AND logic            #
#	Author: LudLac						  #
###################################################################

#!/bin/bash

read -p "Enter username: " username
read -p "Enter password: " password

if [[ ( $username == "admin" && $password == "secret" ) ]]
then
	echo "valid user"
else
	echo "invalid user"
fi

