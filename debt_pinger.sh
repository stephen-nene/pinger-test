# #!/bin/bash

url="https://steve-debtor.onrender.com"

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


