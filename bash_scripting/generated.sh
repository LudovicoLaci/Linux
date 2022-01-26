#!/bin/bash

echo "This is a generated shell script."
# Note: we are in a subshell therefore we can't access outside variables.

echo "Generated file will be named: $OUTFILE"
# Parameter expansion has been disabled ==> literal output.

a=7
b=3

let "c = $a * $b"
echo "c = $c"

exit 0
