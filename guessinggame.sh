#!/usr/bin/bash
# File: guessinggame.sh

function get_num_files() {

  num_files=$(ls | wc -l) 

}

get_num_files
user_guess=$num_files+1

echo "How many files are in the current directory?"

while [[ $user_guess -ne $num_files ]]
do
  get_num_files
  echo "Guess please:"
  read user_guess
  if [[ $user_guess -lt $num_files ]]
  then
    echo "Your guess was too low."
  fi
  if [[ $user_guess -gt $num_files ]]
  then
    echo "Your guess was too high."
  fi
done
echo "Congratulations, you guessed correctly."
