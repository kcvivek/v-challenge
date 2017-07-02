#!/bin/bash
# Author: Vivek KC
# Description: Pebble docker image
mkdir $HOME/gforge
cd $HOME/gforge/
git clone https://github.com/kcvivek/v-challenge.git
cd v-challenge/challenge02-docker
docker build -t pebble_kc:latest .
docker run -it --rm -d -p 80:8080 pebble_kc

docker login
docker tag pebble_kc kcvivek/pebble:pebble_kc
sudo docker push kcvivek/pebble:pebble_kc

cat <<-EOM
Docker Repo: https://hub.docker.com/r/kcvivek/pebble

To run on a new box do:
	docker pull kcvivek/pebble
	docker run -it --rm -d -p 80:8080 pebble_kc

	docker ps

Browse: http://localhost/pebble

EOM
