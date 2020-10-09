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
countH=0
countT=0
for ((i=0;i<21;i++))
do
	rand=$((RANDOM%2))
	case $rand in
		0)
		((countH++));;
		1)
		((countT++));;
		*);;
	esac
done
if [ $countH -eq $countT ]
then 
	echo "ITS TAI"
elif [ $countH -gt $countT ]
then
	echo "HEADS WON......HEADS COUNT:$countH"
else
	echo "TAIL WON......TAIL's COUNT:$countT"
fi 
