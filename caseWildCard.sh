#!/bin/bash

read -p "Enter single character: " INPUT

case "$INPUT" in
	# special wildcard matches 0-9
	[[:digit:]])
		echo "$INPUT is a digit"
		;;
	#from a to z all uppercase and lowercase letters
	[aA-zZ])
		echo "$INPUT is a letter"
		;;
	*)
		echo "$INPUT is probably a symbol"
		;;
esac
