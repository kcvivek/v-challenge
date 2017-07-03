#!/bin/bash
# Author: Vivek KC
# Description: Pebble create/run docker image

docker build -t pebble:latest .
docker run -it --rm -d -p 80:8080 pebble
docker ps


cat <<-EOM
    Browse: 

      - http://localhost
      - http://localhost/pebble
      - http://localhost/kc

EOM
