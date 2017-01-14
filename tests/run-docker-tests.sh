#!/bin/bash
sudo docker build -f $PWD/DockerFile-Fedora-25 -t test/fedora:25 ..
sudo docker build -f $PWD/DockerFile-Fedora-24 -t test/fedora:24 ..
sudo docker build -f $PWD/DockerFile-ArchLinux -t test/archlinux ..
sudo docker build -f $PWD/DockerFile-Debian-stretch -t test/debian:stretch ..
sudo docker build -f $PWD/DockerFile-Debian-sid -t test/debian:sid ..
sudo docker build -f $PWD/DockerFile-Ubuntu-xenial -t test/ubuntu:16.04 ..
sudo docker build -f $PWD/DockerFile-Ubuntu-yakkety -t test/ubuntu:16.10 ..

sudo docker images

docker_image="test/fedora:25"; export docker_image
sudo docker run -t --entrypoint "/usr/bin/ansible" ${docker_image} --version
sudo docker run -t ${docker_image}

docker_image="test/fedora:24"; export docker_image
echo "${docker_image}"
sudo docker run -t --entrypoint "/usr/bin/ansible" ${docker_image} --version
sudo docker run -t ${docker_image}

docker_image="test/archlinux"; export docker_image
echo "${docker_image}"
sudo docker run -t --entrypoint "/usr/bin/ansible" ${docker_image} --version
sudo docker run -t ${docker_image}

docker_image="test/debian:stretch"; export docker_image
echo "${docker_image}"
sudo docker run -t --entrypoint "/usr/bin/ansible" ${docker_image} --version
sudo docker run -t ${docker_image}

docker_image="test/debian:sid"; export docker_image
echo "${docker_image}"
sudo docker run -t --entrypoint "/usr/bin/ansible" ${docker_image} --version
sudo docker run -t ${docker_image}

docker_image="test/ubuntu:16.04"; export docker_image
echo "${docker_image}"
sudo docker run -t --entrypoint "/usr/bin/ansible" ${docker_image} --version
sudo docker run -t ${docker_image}

docker_image="test/ubuntu:16.10"; export docker_image
echo "${docker_image}"
sudo docker run -t --entrypoint "/usr/bin/ansible" ${docker_image} --version
sudo docker run -t ${docker_image}

sudo docker ps --no-trunc -aqf "status=exited" | xargs sudo docker rm

sudo docker images --no-trunc -aqf "dangling=true" | xargs sudo docker rmi
