all: README.md

MEADME.md:
	echo "## guesinggame"
	echo "## for peer assesment"
	echo -n "README.md current build info: " >> README.md
	date >> README.md
	echo -n "\n Total number of lines: " >> README.md
	wc -l < ./guessinggame.sh >> README.md
