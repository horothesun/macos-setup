#!/bin/bash

brew install jenv

mkdir -p ~/.jenv/versions

# https://github.com/AdoptOpenJDK/homebrew-openjdk
brew tap homebrew/cask-versions
brew install --cask temurin
brew install --cask temurin11
brew install --cask temurin8

echo
echo 'JDK versions:'
/usr/libexec/java_home -V

echo
echo 'jEnv versions:'
jenv versions
