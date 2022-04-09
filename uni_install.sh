#!/bin/bash

# requirements
# - go compiler
# - golang.org/x/sys go library

cd ~

git clone https://github.com/arp242/uni

cd uni

go get -u golang.org/x/sys
go build
