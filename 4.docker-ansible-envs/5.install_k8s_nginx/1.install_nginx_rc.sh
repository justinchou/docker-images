#!/bin/bash

kubectl create -f nginx.yml

kubectl get nodes

kubectl get services

kubectl get pods -o wide