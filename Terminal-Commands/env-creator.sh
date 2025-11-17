#!/bin/bash

# .env file creator
ENV_FILE=".env"
> "$ENV_FILE"

while true; do
  read -p "Enter variable name (or press enter to finish): " KEY
  [ -z "$KEY" ] && break
  read -p "Enter value for $KEY: " VALUE
  echo "$KEY=$VALUE" >> "$ENV_FILE"
done

echo ".env file created!"
