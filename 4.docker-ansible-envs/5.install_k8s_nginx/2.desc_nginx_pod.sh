#!/bin/bash

kubectl get pods -o wide | grep -v "NAME" | awk '{print $$1}' | xargs -I {} kubectl describe pods/{}

