#!/bin/bash -x
echo "FLIP COIN SIMULATION PROBLEM"
read -p "ENTER THE NUMBER OF FLIPS" num
count=0
for (( i=0;i<$num;i++ ))
do
	rand=$((RANDOM%2))
	if [ $rand -eq 1 ]
	then
		echo "HEADS"
		((countH++))
	else
		echo "TAIL"
		((countT++))
	fi
done
echo "HEADS COUNT:$countH TAIL COUNT:$countT"
