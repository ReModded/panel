#!/bin/sh

git fetch
git pull

echo "Updating container"

docker build -f Containerfile -t panel:remodded .
cd /root/compose/panel || exit
docker-compose down
docker-compose up --detach