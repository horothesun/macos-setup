#!/bin/bash

brew install rbenv

rbenv install --list

rbenv install 2.7.4
rbenv install 3.0.2

rbenv global 3.0.2

echo
echo 'Ruby versions:'
rbenv versions
