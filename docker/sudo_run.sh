#!/bin/bash

echo "Enter the user image_name: "
read image_name

sudo docker build -t $image_name --build-arg UNAME=$(whoami) --build-arg UID=$(id -u) --build-arg GID=$(id -g) .
