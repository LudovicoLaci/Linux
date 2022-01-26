#!/bin/bash

# For demonstration only. DO NOT RUN!

ROOT_UID=0
E_WRONG_USER=65

E_NOSUCHUSER=70
SUCCESS=0

if [ "$UID" -ne "$ROOT_UID" ];
then
	echo; echo "Only root can run this script."; echo
	exit $E_WRONG_USER
else
	echo; echo "You should know better than to run this script, root."
	echo "Even root users get the blues..."; echo
fi

username=bozo
NEWPASSWORD=security_violation

# check if bozo user exists
grep -q "$username" /etc/passwd > /dev/null
if [ $? -ne $SUCCESS ]
then
	echo "User $username does not exist."
	echo "No password changed."
	exit $E_NOSUCHUSER
fi

echo "$NEWPASSWORD" | passwd --stdin "$username"
# the '--stdin' option to 'passwd' permits getting a new password from stdin (or a pipe).

echo; echo "$username's password changed!"

# Using the 'passwd' command in a script is dangerous.

exit 0
