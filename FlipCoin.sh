#!/bin/bash -x
echo "FLIP COIN SIMULATION PROBLEM"
rand=$((RANDOM%2))
if [ $rand -eq 1 ]
then
	echo "HEADS"
else
	echo "TAIL"
fi
