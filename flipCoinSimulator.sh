#!/bin/bash

Head=1;

checkRandom=$((RANDOM%2))

if [ $checkRandom -eq 1 ]
then
	echo "Heads";
else
	echo "Tails"
fi
