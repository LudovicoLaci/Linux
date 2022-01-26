#!/bin/bash

# cleanup, version 2
# Run as root!
# Insert code here to print error message and exit if not root.

LOG_DIR=/var/log # Variables are better thand hard-coded values.

cd $LOG_DIR

cat /dev/null > messages
cat /dev/null > wtmp

echo "Logs cleaned up."

exit # The right and proper method of "exiting" from a script.
