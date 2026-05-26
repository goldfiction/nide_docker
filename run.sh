#!/bin/sh
docker rm -f nide
docker run -d --name=nide \
  -v /c/Users:/home/dev \
  -p 8010:8123 \
  --restart=unless-stopped \
  nide
