#!/bin/bash -x
echo "FLIP COIN SIMULATION PROBLEM"
read -p "ENTER THE NUMBER OF FLIPS" num
for (( i=0;i<$num;i++ ))
do
	rand=$((RANDOM%2))
	if [ $rand -eq 1 ]
	then
		echo "HEADS"
	else
		echo "TAIL"
	fi
done
