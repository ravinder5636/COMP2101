#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data
# TASK 2: Improve it by rewriting it to use the if command
# TASK 3: Improve it by giving them 3 tries to get it right before failing (test 3 times but only if necessary)
#           *** Do not use the exit command

myString="TestString"
referenceString="password01"

if [ $myString = $referenceString ]
then
	echo "Welcome"
else
	echo "2 Attempt left"
	echo "Your Password is not correct. Please Guess again"
	read myString

	if [ $myString = $referenceString ]
	then
		echo "You Guessed Correct. Welcome"
	else
		echo "1 Attempt left"
		echo "Your Password is not correct. Last Chance"
		read myString
		if [ $myString = $referenceString ]
		then
			echo "You Guessed Correct my bro. Welcome"
		else
			echo "Sorry!Better Luck Next Time. Bye."
		fi
	fi
fi

[ $myString = $referenceString ] && echo "You guessed the password!" || echo "The password eludes you..."
