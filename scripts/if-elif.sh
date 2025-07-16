#!/bin/bash

read -p "enter number: " num

if [ "$num" -gt 100 ]; then
	echo "Number is too big"
elif [ "$num" -ge 50 ]; then
	echo "Number is ok"
else
	echo "Number is too small"
fi
