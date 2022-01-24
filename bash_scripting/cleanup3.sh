#!/bin/bash
# Cleanup, V3

LOG_DIR=/var/log
ROOT_UID=0     # Only users with $UID 0have root privileges.
LINES=50       # Default number of lines saved.
E_XCD=86       # Can't change directory?
E_NOTROOT=87   # Non-root exit error.

# Run as root, of course.
if [ "$UID" -ne "$ROOT_UID" ]
# Test wether UID is equal to ROOT_UID (0).
then
	echo "Must be root to run this script."
	exit $E_NOTROOT
fi

if [ -n "$1" ]
# Test wether command-line argument is present (non-empty).
then
	lines=$1
else
	lines=$LINES # Default, if not specified on command-line.
fi

cd $LOG_DIR

if [ "$PWD" != "$LOG_DIR" ] # not in /var/log?
then
	echo "Can't change to $LOG_DIR."
	exit $E_XCD
fi # Doublecheck if in right directory before messing with log file.


tail -n $lines messages > mesg.temp # Save last section of message log file.
mv mesg.temp messages               # Rename it as system log file.

# cat /dev/null > messages no longer needed, as the above method is safer.

cat /dev/null > wtmp # ': > wtmp' and '> wtmp' have the same effect.
echo "Log files cleaned up."
# Note that there are other log files in /var/log not affected by this script.

exit 0
# A zero return value from the script upon exit indicates success to the shell.

