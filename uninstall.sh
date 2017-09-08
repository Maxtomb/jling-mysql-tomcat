#! /bin/bash
source ./cache
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME
docker rmi $IMAGE_NAME
rm -rf ./cache
