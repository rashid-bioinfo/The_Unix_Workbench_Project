#! /usr/bin/env bash

# File: guessinggame.sh

function guessinggame {

	list=$(ls | wc -l)

	files=0

	while [[ $list -ne $files ]]
	do
		echo -n "How many files are present in the directory: "
		read files

		if [[ $list -eq $files ]]
		then
			echo "Congratulation, You have guessed right."
		else
			if [[ $list -gt $files ]]
			then
				echo "Try again. Enter a larger  number."
			else
				echo "Try again. Enter a smaller  number."
			fi
		fi
	done
}

guessinggame
