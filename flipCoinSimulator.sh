#!/bin/bash -x

Head=1;

checkRandom=$((RANDOM%2))

if [ $checkRandom -eq 1 ]
then
	echo "isHeads";
else
	echo "isTails"
fi
