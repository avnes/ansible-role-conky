#!/bin/bash
sudo groupadd docker
sudo systemctl enable docker
sudo systemctl start docker
sudo docker pull fedora:25
sudo docker pull fedora:24
sudo docker pull ubuntu:16.04
sudo docker pull ubuntu:16.10
sudo docker pull pritunl/archlinux:latest
sudo docker pull debian:stretch
sudo docker pull debian:sid

sudo docker images
