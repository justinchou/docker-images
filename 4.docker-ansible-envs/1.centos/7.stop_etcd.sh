#!/bin/bash

# 启动
sudo systemctl stop etcd

ps -ef | egrep "etcd"