#!/bin/bash

add=0
counter=0
reps=10

while [ "$counter" -le "$reps" ]
do
	add=$(expr $add + $counter)
	echo "add=$add, loop=$counter"
	counter=$(expr $counter + 1)
done

