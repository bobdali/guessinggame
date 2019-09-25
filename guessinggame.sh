#!/usr/bin/env bash
# File: guessinggame.sh
# Peer graded assignment
# Title: GuessingGame

number=$(ls -1 | wc -l)

function correct {        
    if [[ $1 -lt $2 ]]          
    then
	echo "Try higher..."
    elif [[ $1 -gt $2 ]]
    then
	echo "Try lower..."
    else
	echo ""
	echo "Correct repsonse!"
    fi
}

while [[ $number -ne $guess ]]  
do
	
    read -p "How many files are in the current directory?: " guess
    # echo "You entered: $guess"
    echo $(correct $guess $number)
    echo ""
done