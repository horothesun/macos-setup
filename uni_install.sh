#!/bin/bash

# requirements
# - go compiler
# - golang.org/x/sys go library

UNI_CLONE_PATH="~/arp242-uni"

[[ -d "${UNI_CLONE_PATH}" ]] && echo "${UNI_CLONE_PATH} folder already exists. Removing it..." && rm -fr "${UNI_CLONE_PATH}"

git clone "https://github.com/arp242/uni" "${UNI_CLONE_PATH}"
cd "${UNI_CLONE_PATH}"
go get -u "golang.org/x/sys"
go build
