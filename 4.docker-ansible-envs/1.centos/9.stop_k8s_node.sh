#!/bin/bash

sudo systemctl stop etcd
sudo systemctl stop kube-proxy
sudo systemctl stop kubelet
sudo systemctl stop flanneld

ps -ef | egrep "kube|flanneld|etcd"
ip address show | grep flannel
netstat -lntp