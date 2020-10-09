#!/bin/bash -x
echo "FLIP COIN SIMULATION PROBLEM"
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
echo "HEADS :$countH TAIL:$countT"
if [ $countH -eq $countT ]
then 
	echo "ITS TAI"
	while [ $(($countH-$countT )) -ne 2 ] && [ $(($countT-$countH )) -ne 2 ] 
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
	if [ $countH -gt $countT ]
	then
		echo "HEADS WIN...HEADS COUNT:$countH" 
	else
	echo "TAIL WIN....TAIL COUNT:$countT"
	fi
elif [ $countH -gt $countT ]
then
	echo "HEADS WON......HEADS COUNT:$countH"
else
	echo "TAIL WON......TAIL's COUNT:$countT"
fi 
