#!/bin/bash
#
# Follow Up Boss API examples.
#
# Sends a lead into Follow Up Boss when a seller fills out a form.
# This can be used with any form that targets seller leads, e.g.:
#   - CMA request
#   - What is your home worth?
#   - Tips for selling your home or investment property
#   - 11 key steps to selling your property
#   - Find an agent
#
# More info: https://api.followupboss.com/api-documentation/
#

# API key for demo account, replace with your own API key
API_KEY=7a5bad2cf150b388a7ecf1dca94d5e2d14694a

# event data
JSON='{
    "source": "MyAwesomeWebsite.com",
    "type": "Seller Inquiry",
    "message": "We are planning to sell our house and move to Florida",
    "person": {
        "firstName": "John",
        "lastName": "Smith",
        "emails": [{"value": "john.smith@example.com"}],
        "phones": [{"value": "555-555-5555"}],
        "tags": ["Seller", "CMA Request"]
    },
    "property": {
        "street": "1234 High Oak St",
        "city": "Rochester",
        "state": "WA",
        "code": "98579",
        "type": "Single-Family Home",
        "bedrooms": 3,
        "bathrooms": 2
    }
}'

# send request via curl and display results
curl -i --user $API_KEY: \
    -H "Content-Type: application/json" \
    -X POST -d "$JSON" \
    https://api.followupboss.com/v1/events
