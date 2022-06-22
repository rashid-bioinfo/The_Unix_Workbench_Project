all: README.md

README.md: guessinggame.sh
	echo "Project Title: Guessing Game - Guess the number of files or directories in the current path" > README.md
	echo -n "The date and time at which make was run: " >> README.md
	date >> README.md
	echo -n "The number of lines of guessinggame.sh are: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	
clean:
	rm README.md
	
