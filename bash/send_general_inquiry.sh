#!/bin/bash
#
# Follow Up Boss API examples.
#
# Sends a lead into Follow Up Boss when they submit a general inquiry,
# for example a Contact Us form.
#
# More info: https://api.followupboss.com/api-documentation/
#

# API key for demo account, replace with your own API key
API_KEY=7a5bad2cf150b388a7ecf1dca94d5e2d14694a

# event data
JSON='{
    "source": "MyAwesomeWebsite.com",
    "type": "General Inquiry",
    "message": "I am planning to buy my first home, what is the first step?",
    "person": {
        "firstName": "John",
        "lastName": "Smith",
        "emails": [{"value": "john.smith@example.com"}],
        "phones": [{"value": "555-555-5555"}],
        "tags": ["Contact Us"]
    }
}'

# send request via curl and display results
curl -i --user $API_KEY: \
    -H "Content-Type: application/json" \
    -X POST -d "$JSON" \
    https://api.followupboss.com/v1/events
