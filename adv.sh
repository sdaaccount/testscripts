#!/bin/bash

echo "What is your name, adventurer?"

read adventurer

echo "Nice to meet you, $adventurer"

####

echo "Would you like to play a game? [y/n]"

read decision
if [[ "$decision" == "y" ]]
then
	echo "Great! Lets go!"
else
	echo "Sad to see you go, $adventurer!"
fi

####

read choice 

echo "Pick an equipment"; echo

case "$choice" in
	[Ss] )
		echo "Spade"
		;;
	[Bb] )
		echo "Bread"
		;;
	*    )
		echo "Not proper choice"
		;;
esac

