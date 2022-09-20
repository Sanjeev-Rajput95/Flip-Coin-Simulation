#!/bin/bash

Head=1;
tails=0;
tie=2;
HeadCount=0;
TailCount=0;
tieCount=0;

for (( i = 1; i > 0; i++ ))
do
	checkRandom=$((RANDOM%3))

	if [ $checkRandom -eq 1 ]
	then
		HeadCount=$(( $HeadCount + 1 ))
		if [ $HeadCount -eq 21 ]
		then
			result=$(( HeadCount - TailCounter ))
			echo "Heads win by $result diff."
			exit
		fi
	elif [ $checkRandom -eq 0 ]
	then
		TailCount=$(( $TailCount + 1 ))
		if [ $TailCount -eq 21 ]
		then
			result=$(( TailCount - HeadCounter ))
			echo "Tails win by $result diff."
			exit
		fi
	else
		tieCount=$(( $tieCount + 1 ))
		if [ $tieCount -eq 21 ]
		then
			echo "TIE"
			exit
		fi
	fi

done
