#!/bin/bash

brew install jenv

mkdir -p ~/.jenv/versions

# https://github.com/AdoptOpenJDK/homebrew-openjdk
brew tap homebrew/cask-versions

brew install --cask temurin8 temurin11 temurin

echo
echo 'JDK versions:'
/usr/libexec/java_home -V

echo
echo 'jEnv versions:'
jenv versions
