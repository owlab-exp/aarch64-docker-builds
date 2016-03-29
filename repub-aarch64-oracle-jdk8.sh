#!/bin/sh
TAG=dockreg.owlab.com:5000/aarch64-oracle-jdk8
DIR=aarch64-oracle-jdk8
docker build -t $TAG $DIR && docker push $TAG
