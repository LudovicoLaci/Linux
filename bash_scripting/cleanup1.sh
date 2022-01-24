#!/bin/bash

# Cleanup: A script to clean up log files in /var/log
# Don't forget to run as root!

cd /var/log
cat /dev/null > messages
cat /dev/null > wtmp
echo "Log files cleaned up."
