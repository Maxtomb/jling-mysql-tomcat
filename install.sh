#!/bin/bash

MYSQL_PWD=123456
IMAGE_NAME=jling/tomcat_mysql
CONTAINER_NAME=helloworld

docker build -t $IMAGE_NAME .

sleep 5s

docker run -d -p 3303:3306 -p 8089:8080 --name $CONTAINER_NAME -e MYSQL_PASSWORD=$MYSQL_PWD $IMAGE_NAME
echo "CONTAINER_NAME=$CONTAINER_NAME" > ./cache
echo "IMAGE_NAME=$IMAGE_NAME" >> ./cache
echo "$CONTAINER_NAME Container Started Successfully"

sleep 5s

for file in ./sql/*
do
    docker exec $CONTAINER_NAME sh -c "mysql -uroot -p$MYSQL_PWD < /sql/${file##*/}"
done

echo "$CONTAINER_NAME Metadata Initialized Successfully"
echo "Please visit http://localhost:8089/taa/data to do taa Test"



