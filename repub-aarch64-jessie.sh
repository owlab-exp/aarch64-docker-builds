#!/bin/sh
DIR=aarch64-jessie
TAG=dockreg.owlab.com:5000/$DIR
mkdir -p $DIR
sudo debootstrap --arch arm64 jessie $DIR http://httpredir.debian.org/debian/ && \
sudo tar -C $DIR -c . | docker import - $TAG && docker push  $TAG
