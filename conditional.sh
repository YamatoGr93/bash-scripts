#!/bin/bash

# Prompt the user for their name
echo "Enter your name:"
read name

# Check if the user provided a name
if [ -z "$name" ]; then
  echo "You did not enter a name."
else
  echo "Hello, $name!"
fi