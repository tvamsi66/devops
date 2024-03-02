#!/bin/sh

# Echo Akamai CLI version

#akamai help

# Add any other commands you want to run here
akamai list
akamai --version

echo "Received user input from github workflow: $AKAMAI_NETWORK"
echo "Received user input from github workflow: $ENVIRONMENT"
echo "Received user input from github workflow: $PIPELINE_NAME"
echo "Received user input from github workflow: $PROPERTY_NAME"


ls -R /app/

cd /app/testFolder
cat test1.txt  
