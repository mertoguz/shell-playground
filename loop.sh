#!/bin/bash

COLORS="RED GREEN BLUE"

for COLOR in $COLORS
do
	echo "Current color: $COLOR"
done

printf "\n"

# -z returns isEmpty result
if [ -n "$1" ]
then
	PARAM_INDEX=1;
	echo 'For each given param'
	
	for PARAM in $@
	do
		echo "${PARAM_INDEX}.param: $PARAM"
		((PARAM_INDEX++))
	done
fi

printf "\n"

ITERATION_AMOUNT=1

while [ $ITERATION_AMOUNT -le 5 ]
do
	echo ${ITERATION_AMOUNT}.iteration
	((ITERATION_AMOUNT++))
done

printf "\n";

#This example looks like magic

LINE_NUMBER=1

printf "Reading from lines.txt \n"
while read LINE
do
	echo ${LINE_NUMBER}.line: ${LINE}
	((LINE_NUMBER++))
done < ./lines.txt
