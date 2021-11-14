#!/bin/bash

brew install jenv

mkdir -p ~/.jenv/versions

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

echo
echo 'Use `jenv add <path>` to add any missing JDK version to jEnv'
