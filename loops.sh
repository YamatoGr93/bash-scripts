#!/bin/bash

# Loop to greet multiple users
while true; do
  echo "Enter your name (or type 'exit' to quit):"
  read name

  if [ "$name" == "exit" ]; then
    break
  elif [ -z "$name" ]; then
    echo "You did not enter a name."
  else
    echo "Hello, $name!"
  fi
done