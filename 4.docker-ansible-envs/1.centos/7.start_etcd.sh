#!/bin/bash

# 启动
sudo systemctl enable etcd
sudo systemctl restart etcd

# 查看启动状态
sudo systemctl status etcd

# 查看集群状态
etcdctl cluster-health

ps -ef | egrep "etcd"