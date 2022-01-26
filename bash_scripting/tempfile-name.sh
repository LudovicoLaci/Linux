#!/bin/bash

# temp filename generator

BASE_STR=`mcookie`		# 32-char magic cookie.
POS=11				# Arbitrary pos in mcookie string.
LEN=5				# Get $LEN consecutive chars.

prefix=temp

suffix=${BASE_STR:POS:LEN}	# Extract a 5-char string starting at pos 11.

temp_filname=$prefix.$suffix	# Construct the filename

echo "Temp filename = "$temp_filname""

exit 0
