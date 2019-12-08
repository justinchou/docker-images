#!/bin/bash

sudo apt update
sudo apt install docker.io

docker -v

sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker
