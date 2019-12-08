#!/usr/bin/env bash

VERSION=`curl -s "http://storage.googleapis.com/kubernetes-release/release/stable.txt"`
echo "latest version: ${VERSION}"

if [ "$(uname)"=="Darwin" ]; then
  # macos
  SYS=darwin
  EXT=
elif [ "$(expr substr $(uname -s) 1 5)"=="Linux" ]; then
  # linux
  SYS=linux
  EXT=
elif [ "$(expr substr $(uname -s) 1 10)"=="MINGW32_NT" ]; then
  # windows
  SYS=windows
  EXT=.exe
fi

if [ ! -f "./kubectl" ]; then
  curl -LO "http://storage.googleapis.com/kubernetes-release/release/${VERSION}/bin/${SYS}/amd64/kubectl${EXT}"
fi

chmod +x kubectl

./kubectl version