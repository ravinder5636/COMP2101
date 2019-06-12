#!/bin/bash
#
# This script implements a guessing game
# it will pick a secret number from 1 to 10
# it will then repeatedly ask the user to guess the number
#    until the user gets it right

# Give the user instructions for the game
cat <<EOF
Let's play a game.
I will pick a secret number from 1 to 10 and you have to guess it.
If you get it right, you get a virtual prize.
Here we go!
EOF

# Pick the secret number and set their default guess to be a wrong answer
secretnumber=$(($RANDOM % 10 +1)) # save our secret number to compare later
userguess=0

# This loop repeatedly asks the user to guess and tells them if they got the right answer
# TASK 1: Test the user input to make sure it is not blank
# TASK 2: Test the user input to make sure it is a number from 1 to 10 inclusive
# TASK 3: Give them better feedback, telling them if their guess is too low, or too high
echo "$secretnumber"
for values in {1..4}
do

  if [ $userguess != $secretnumber ]
    then
    read -p "Give me a number from 1 to 10: " userguess

    while [ -z "$userguess" ];do
      read -p "No blank. please give some input from 1 to 10: " userguess
    done
    while [ "$userguess" -lt 1 -o "$userguess" -gt 10 ];do
      read -p "please give some input between 1 to 10: " userguess
    done

  else
    echo "You got it! Have a milkdud."
    break
  fi
  if [ $values -eq 4 ]
    then
    echo "Sorry!!You lost by running out of Guess"
    echo "Better luck next Time"
  elif [ $userguess -lt $secretnumber ]
    then
    echo "You guess too low number"
    echo "Please Try Again"
  elif [ $userguess -gt $secretnumber ]
    then
    echo "You guess too High number"
    echo "Please Try Again"
  fi
done
