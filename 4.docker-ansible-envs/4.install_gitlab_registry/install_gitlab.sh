#!/bin/bash

sudo docker run --detach \
  --hostname gitlab.kittymeow.cc \
  --publish 10443:443 --publish 1080:80 --publish 22:22 \
  --name gitlab \
  --restart always \
  --volume `pwd`/gitlab/config:/etc/gitlab \
  --volume `pwd`/gitlab/logs:/var/log/gitlab \
  --volume `pwd`/gitlab/data:/var/opt/gitlab \
  gitlab/gitlab-ce:latest