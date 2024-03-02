#!/bin/sh

# Echo Akamai CLI version
akamai --version

akamai property-manager lg

akamai pipeline lc

# Test Received user inputs from other workflows
echo "Received user input from github workflow: $AKAMAI_NETWORK"
echo "Received user input from github workflow: $ENVIRONMENT"
echo "Received user input from github workflow: $PIPELINE_NAME"
echo "Received user input from github workflow: $PROPERTY_NAME"


ls -R /app/
