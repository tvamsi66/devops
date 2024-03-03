#!/bin/sh

# Echo Akamai CLI version
akamai --version

# Update to stable rule set
#akamai pipeline crf -p "$PIPELINE_NAME" -r v2023-01-05

#Run a merge
akamai pipeline merge -p "$PIPELINE_NAME" $ENVIRONMENT

#Update the property in ION
#akamai pm set-ruleformat v2023-01-05
akamai pm property-update -p "$ENVIRONMENT"$PROPERTY_NAME --file $WORKSPACE/$PIPELINE_NAME/dist/"$ENVIRONMENT".$PROPERTY_NAME.papi.json

#Activate the property in ION
akamai property-manager activate-version -p $ENVIRONMENT.$PROPERTY_NAME --network $AKAMAI_NETWORK

#--------------------------------------------------
ls -R /app/

akamai property-manager lg

akamai pipeline lc

# Test Received user inputs from other workflows
echo "Received user input from github workflow: $AKAMAI_NETWORK"
echo "Received user input from github workflow: $ENVIRONMENT"
echo "Received user input from github workflow: $PIPELINE_NAME"
echo "Received user input from github workflow: $PROPERTY_NAME"
