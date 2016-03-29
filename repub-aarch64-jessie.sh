#!/bin/sh
TAG=dockreg.owlab.com:5000/aarch64-jessie
mkdir -p aarch64-jessie
sudo debootstrap --arch arm64 jessie aarch64-jessie http://httpredir.debian.org/debian/ && \
sudo tar -C aarch64-jessie -c . | docker import - $TAG && docker push  $TAG
