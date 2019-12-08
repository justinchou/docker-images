#!/bin/bash

# 将 `enforcing` 改为 `disabled`
sed -i -e "s/SELINUX=enforcing/SELINUX=disabled/" /etc/selinux/config

# 禁用防火墙
sudo systemctl stop firewalld
sudo systemctl disable firewalld

# 更新软件包
sudo yum update -y

# 同步系统时间
sudo ntpdate -u cn.pool.ntp.org