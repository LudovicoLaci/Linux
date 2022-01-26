#!/bin/bash
# allprofs.sh: Print all user profiles.

FILE=.bashrc # File containing user profile

for home in `awk -F: '{print $6}' /etc/passwd`; do
	[ -d "$home" ] || continue # If no home directory, go to next.
	[ -r "$home" ] || continue # If not readable, go to next.
	(cd $home; [ -e $FILE ] && less $FILE); done

# When script terminates, there is no need to 'cd' bask to original directory,
#+ because 'cd $home' takes place in a subshell.

exit 0
