#!/bin/sh
DIR=aarch64-oracle-jdk8
TAG=dockreg.owlab.com:5000/$DIR
docker build -t $TAG $DIR && docker push $TAG
