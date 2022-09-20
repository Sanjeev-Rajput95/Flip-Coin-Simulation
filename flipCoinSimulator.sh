#!/bin/bash

Head=1;
tails=0;
HeadCount=0;
TailCount=0;

for (( i = 1; i <= 20; i++ ))
do
	checkRandom=$((RANDOM%2))

	if [ $checkRandom -eq 1 ]
	then
		HeadCount=$(( $HeadCount + 1 ))
	else
		TailCount=$(( $TailCount + 1 ))
	fi

done

echo "Heads is come $HeadCount";
echo "isTails is come $TailCount";
