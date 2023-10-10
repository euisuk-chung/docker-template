#!/bin/bash

echo "Enter the user Image_name: "
read Image_name

echo "Enter the user container_name: "
read container_name

# docker run --gpus all -td --ipc=host --name container_name -v ~/code/and/data/path/on/your/host:/folder/name/on/docker -v /etc/passwd:/etc/passwd -p 8888:8888 -p 6006:6006 $Image_name
sudo docker run --gpus all -td --ipc=host --name $container_name \
-v ~/home/euisuk.chung/work:/repo \
-v /etc/passwd:/etc/passwd -p 8888:8888 -p 6006:6006 $Image_name
