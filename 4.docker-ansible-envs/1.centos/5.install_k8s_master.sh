#!/bin/bash

sudo yum install etcd -y

# 删除旧版
sudo yum remove docker \
  docker-client \
  docker-client-latest \
  docker-common \
  docker-latest \
  docker-latest-logrotate \
  docker-logrotate \
  docker-engine -y
# 删除 Community 版本
sudo yum remove docker-ce docker-ce-cli containerd.io -y
sudo rm -rf /var/lib/docker

sudo yum install kubernetes-master -y
