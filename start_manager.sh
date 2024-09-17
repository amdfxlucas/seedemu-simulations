#!/bin/bash



#docker stack deploy -c ./ix/docker-compose.yml  tiny_test
#docker compose -f ./ix/docker-compose.yml -f ./client/docker-compose.yml up


set -a; source ./2/.env ;set +a;  envsubst < ./2/docker-compose.yml > ./2/_docker-compose.yml
set -a; source ./3/.env ;set +a; envsubst < ./3/docker-compose.yml > ./3/_docker-compose.yml
export $(cat ./4/.env );envsubst < ./4/docker-compose.yml > ./4/_docker-compose.yml
export $(cat ./5/.env );envsubst < ./5/docker-compose.yml > ./5/_docker-compose.yml

export $(cat ./6/.env );envsubst < ./6/docker-compose.yml > ./6/_docker-compose.yml
export $(cat ./7/.env );envsubst < ./7/docker-compose.yml > ./7/_docker-compose.yml
export $(cat ./8/.env );envsubst < ./8/docker-compose.yml > ./8/_docker-compose.yml
export $(cat ./9/.env );envsubst < ./9/docker-compose.yml > ./9/_docker-compose.yml
export $(cat ./10/.env );envsubst < ./10/docker-compose.yml > ./10/_docker-compose.yml

export $(cat ./11/.env );envsubst < ./11/docker-compose.yml > ./11/_docker-compose.yml
export $(cat ./12/.env );envsubst < ./12/docker-compose.yml > ./12/_docker-compose.yml
export $(cat ./13/.env );envsubst < ./13/docker-compose.yml > ./13/_docker-compose.yml
export $(cat ./14/.env );envsubst < ./14/docker-compose.yml > ./14/_docker-compose.yml
export $(cat ./15/.env );envsubst < ./15/docker-compose.yml > ./15/_docker-compose.yml

# no services get created here, since 'replicas: ' is set to zero for all of them
# So this will only create the overlay networks
docker stack config -c ./6/docker-compose.yml \
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
-c ./dummy/docker-compose.yml \
-c ./5/_docker-compose.yml  --skip-interpolation \
| docker stack deploy --compose-file - tiny_test

# --with-registry-auth --resolve-image=always  tiny_test
