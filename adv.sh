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

declare -a equipment

while [[ "$choice" != "q" ]]
do

	echo "Pick an equipment"; 
	echo "s - spade";
	echo "b - bread"; echo

	read choice

	case "$choice" in
		[Ss] )
			echo "Spade"
			equipment+=(spade)
			;;
		[Bb] )
			echo "Bread"
			equipment+=(bread)
			;;
		[Qq] ) ;;
		*    )
			echo "Not proper choice"
			;;
	esac
done

####
# List equipment

echo
echo "Your equipment:"
for i in "${equipment[@]}"
do
	echo $i
done
