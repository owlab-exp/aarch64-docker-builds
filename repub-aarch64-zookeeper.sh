#!/bin/sh
TAG=dockreg.owlab.com:5000/aarch64-zookeeper
DIR=aarch64-zookeeper
docker build -t $TAG $DIR && docker push $TAG
