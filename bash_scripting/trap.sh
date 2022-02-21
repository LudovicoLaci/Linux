#!/bin/bash

function sortir ()
{
	echo "signal 15 recu"
	exit 0
}

trap '' 2
trap sortir 15

echo "Je suis $$"

read
while true
do
	echo "Ctrl+c impossible!"
done

