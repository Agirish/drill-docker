#!/usr/bin/env bash

PROJECT=zookeeper
VERSION=$1
OS=ubuntu

if [[ ${VERSION} == "" ]]
then
  echo "Please enter the ZooKeeper VERSION string. For ex: 3.4.10"
  exit -1
fi

docker pull agirish/${PROJECT}:${VERSION}-${OS}

container_id=`eval "docker run -d --privileged -h ${PROJECT} agirish/${PROJECT}:${VERSION}-${OS}"`
docker exec -it $container_id /bin/bash