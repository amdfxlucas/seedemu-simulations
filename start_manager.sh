#!/bin/bash



#docker stack deploy -c ./ix/docker-compose.yml  tiny_test
#docker compose -f ./ix/docker-compose.yml -f ./client/docker-compose.yml up

# no services get created here, since 'replicas: ' is set to zero for all of them
# So this will only create the overlay networks
docker stack deploy -c ./6/_docker-compose.yml \
-c ./7/_docker-compose.yml \
-c ./8/_docker-compose.yml \
-c ./9/_docker-compose.yml \
-c ./10/_docker-compose.yml \
-c ./11/_docker-compose.yml \
-c ./12/_docker-compose.yml \
-c ./13/_docker-compose.yml \
-c ./14/_docker-compose.yml \
-c ./15/_docker-compose.yml \
-c ./ix/docker-compose.yml  \
-c ./2/_docker-compose.yml \
-c ./3/_docker-compose.yml \
-c ./4/_docker-compose.yml  \
-c ./5/_docker-compose.yml  \
--with-registry-auth --resolve-image=always  tiny_test