#!/bin/bash

sudo systemctl enable kube-apiserver
sudo systemctl enable kube-controller-manager
sudo systemctl enable kube-scheduler

sudo systemctl restart kube-apiserver
sudo systemctl restart kube-controller-manager
sudo systemctl restart kube-scheduler

sudo systemctl status kube-apiserver
sudo systemctl status kube-controller-manager
sudo systemctl status kube-scheduler

ps -ef | egrep "kube"