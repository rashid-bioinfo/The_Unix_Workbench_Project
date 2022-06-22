#! /usr/bin/env bash

# File: guessinggame.sh

function guessinggame {

	list=$(ls | wc -l)

	echo -n "How many files are present in the current directory: "
	read files

	while [[ $list -ne $files || $list -eq $files ]]
	do
		if [[ $list -eq $files ]]
		then
			echo "Congratulation, You have guessed right."
			break
		else
			if [[ $list -gt $files ]]
			then
				echo -n "Try again. Enter a larger  number: "
				read files
			else
				echo -n "Try again. Enter a smaller  number: "
				read files
				
			fi
		fi
	done
}

guessinggame
