#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/repos"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "repo": {
      "name": "'"${RNAME}"'",
      "full_url": "'"${FURL}"'"
    }
  }'

echo
