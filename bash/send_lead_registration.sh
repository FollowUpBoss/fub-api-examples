#!/bin/bash
#
# Follow Up Boss API examples.
#
# Sends a lead into Follow Up Boss when they submit a general lead capture form
# on a website or in a mobile app. This can be used with any form such as:
#   - Registration on an IDX website
#   - Tips for buying your first home
#   - Receive a free market report
#
# More info: https://api.followupboss.com/api-documentation/
#

# API key for demo account, replace with your own API key
API_KEY=7a5bad2cf150b388a7ecf1dca94d5e2d14694a

# event data
JSON='{
    "source": "MyAwesomeWebsite.com",
    "type": "Registration",
    "person": {
        "firstName": "John",
        "lastName": "Smith",
        "emails": [{"value": "john.smith@example.com"}],
        "phones": [{"value": "555-555-5555"}],
        "tags": ["Free Market Report"]
    }
}'

# send request via curl and display results
curl -i --user $API_KEY: \
    -H "Content-Type: application/json" \
    -X POST -d "$JSON" \
    https://api.followupboss.com/v1/events
