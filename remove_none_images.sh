#!/bin/bash

docker images | grep none | awk '{print $3}' | xargs -n 1 docker rmi
