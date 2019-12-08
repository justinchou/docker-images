#!/bin/bash

sudo systemctl stop etcd
sudo systemctl stop kube-apiserver
sudo systemctl stop kube-controller-manager
sudo systemctl stop kube-scheduler

ps -ef | egrep "kube|etcd"
netstat -lntp