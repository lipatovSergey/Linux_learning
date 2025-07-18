#!/bin/bash

if [ -z "$1" ]; then
	echo "Error: No argument was passed." >&2
	exit 1
elif ! [[ "$1" =~ ^-?[0-9]+$ ]]; then
	echo "Error: Argument not number." >&2
	exit 2
elif ! (( $1 % 2 )); then
	echo "Argument is an even number"
else 
	echo "Argument is an odd number"
fi
