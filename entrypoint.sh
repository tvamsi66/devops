#!/bin/sh

# Echo Akamai CLI version

#akamai help

# Add any other commands you want to run here
akamai list
akamai --version

echo "Received user input from github workflow: $AKAMAI_NETWORK"
echo "Received user input from github workflow: $ENVIRONMENT"

ls -R /app/

cd /app/testFolder
cat test1.txt  
