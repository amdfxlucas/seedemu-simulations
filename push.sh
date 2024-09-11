#!/bin/bash

docker compose -f ./2/docker-compose.yml -f ./3/docker-compose.yml \
-f ./4/docker-compose.yml -f ./5/docker-compose.yml -f ./6/docker-compose.yml \
-f ./7/docker-compose.yml -f ./8/docker-compose.yml -f ./9/docker-compose.yml \
-f ./10/docker-compose.yml -f ./11/docker-compose.yml -f ./12/docker-compose.yml \
-f ./13/docker-compose.yml -f ./14/docker-compose.yml -f ./15/docker-compose.yml \
-f ./ix/docker-compose.yml  push