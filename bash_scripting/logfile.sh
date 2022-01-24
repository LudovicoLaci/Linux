#!/bin/bash

LOG_FILE=logfile.log
# No hard coding

{ date; who; uptime; } | tee $LOG_FILE
# Placing a list of commands between parentheses causes a subshell environment to be created. Placing a list of commands between curly braces causes the list to be executed in the current shell context. No subshell is created. The semicolon (or newline) following list is required.

# tee redirect stream outputs to both stdout and an output file.

exit 0
# Exit code if everything runs smoothly
