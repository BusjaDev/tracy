#!/usr/bin/env bash

docker stop `docker ps -q`
docker rm `docker ps -aq` --force
docker rmi `docker images -aq` --force
docker images -aq
