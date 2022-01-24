#!/bin/bash

echo "The number of days since the year's beginning is `date +%j`."
# Needs a leading '+' to invoke formating
# %j gives day of year

echo "The number of seconds elapsed since 01/01/1970 is `date +%s`."
# %s yields number of seconds since "UNIX epoch" began but how is this useful?
# Useful to compare two dates or descibing periods.

prefix=temp
suffix=$(date +%s)
filename=$prefix.$suffix
echo "Temporary filename = $filename"
# It's great for creating "Unique and random" temp filenames

exit 0
