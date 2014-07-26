#!/bin/bash
#
# Follow Up Boss API examples.
#
# Sends a lead into Follow Up Boss when a buyer inquires about a specific property.
# Can be used on any IDX website, mobile website or app that lists properties for sale of rent.
#
# More info: https://api.followupboss.com/api-documentation/
#

# API key for demo account, replace with your own API key
API_KEY=7a5bad2cf150b388a7ecf1dca94d5e2d14694a

# event data
JSON='{
    "source": "MyAwesomeWebsite.com",
    "type": "Property Inquiry",
    "message": "I would like to receive more information about 1234 High Oak St, Rochester, WA 98579.",
    "person": {
        "firstName": "John",
        "lastName": "Smith",
        "emails": [{"value": "john.smith@example.com"}],
        "phones": [{"value": "555-555-5555"}],
        "tags": ["Buyer", "More Information"]
    },
    "property": {
        "street": "1234 High Oak St",
        "city": "Rochester",
        "state": "WA",
        "code": "98579",
        "mlsNumber": "1234567",
        "price": 449000,
        "forRent": false,
        "url": "http://www.myawesomewebsite.com/property/1234567-1234-high-oak-st-rochester-wa-98579/",
        "type": "Single-Family Home",
        "bedrooms": 3,
        "bathrooms": 2,
        "area": 2888,
        "lot": 0.98
    }
}'

# send request via curl and display results
curl -i --user $API_KEY: \
    -H "Content-Type: application/json" \
    -X POST -d "$JSON" \
    https://api.followupboss.com/v1/events
