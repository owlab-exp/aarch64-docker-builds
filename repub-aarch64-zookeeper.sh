#!/bin/sh
DIR=aarch64-zookeeper
TAG=dockreg.owlab.com:5000/$DIR
docker build -t $TAG $DIR && docker push $TAG
