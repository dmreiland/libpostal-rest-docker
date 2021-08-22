#!/usr/bin/env bash
set -e

curl https://storage.googleapis.com/golang/go1.17.linux-amd64.tar.gz > go1.17.linux-amd64.tar.gz

echo "6bf89fc4f5ad763871cf7eac80a2d594492de7a818303283f1366a7f6a30372d  go1.17.linux-amd64.tar.gz" | sha256sum -c

tar xzf go1.17.linux-amd64.tar.gz

export GOROOT=/libpostal/go
export GOPATH=/libpostal/workspace
export PATH=$PATH:/libpostal/go/bin

go get github.com/dmreiland/libpostal-rest

go install github.com/dmreiland/libpostal-rest
