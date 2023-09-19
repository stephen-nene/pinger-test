#!/bin/bash

# Define a function to ping a website and check the response code
ping_website() {
  local url="$1"
  echo " "
  echo "🚀 Pinging $url..."
  echo " "
  # Use 'curl' to ping the website
  response=$(curl -s -o /dev/null -w "%{http_code}" $url)

  # Check the response code
  if [ "$response" == "200" ]; then
    echo "✅ Website is up!"
  else
    echo "❌ Website is down. Response code: $response"
  fi
  echo " "
}

# List of websites to ping
websites=("https://mnetimall.onrender.com" "https://steve-debtor.onrender.com/users")

# Loop through the websites and ping each one
for website in "${websites[@]}"; do
  ping_website "$website"
done
