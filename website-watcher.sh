#!/bin/bash

# Define variables
URL="https://www.example.com"  # Replace with the website URL you want to check
STRING_TO_FIND="String you want to find"  # Replace with the string you want to search for
TELEPUSH_TOKEN="your-api-token"  # Replace with your actual Telepush API token
ALERT_MESSAGE="Alert: The string '${STRING_TO_FIND}' was not found on '${URL}'." # Customize the alert message
TELEPUSH_ENDPOINT="https://telepush.dev/api/messages/${TELEPUSH_TOKEN}"

# Download the website content
response=$(curl -s "$URL")

# Check if the string is not found in the response
if [[ "$response" != *"$STRING_TO_FIND"* ]]; then
    # If the string is not found, send a notification via Telepush
    curl -X POST "$TELEPUSH_ENDPOINT" \
    -H "Content-Type: application/json" \
    -d '{
            "text": "'"${ALERT_MESSAGE}"'"
        }'
    echo "Notification sent."
else
    echo "String found."
fi