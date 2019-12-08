#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install python -y
sudo apt-get install ansible -y

ansible --version
