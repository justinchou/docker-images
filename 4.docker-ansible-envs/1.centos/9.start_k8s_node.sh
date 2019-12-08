#!/bin/bash

sudo systemctl enable kube-proxy
sudo systemctl enable kubelet
sudo systemctl enable flanneld

sudo systemctl restart kube-proxy
sudo systemctl restart kubelet
sudo systemctl restart flanneld

sudo systemctl status kube-proxy
sudo systemctl status kubelet
sudo systemctl status flanneld

ps -ef | egrep "kube|flanneld"
ip address show | grep flannel