#!/bin/bash

brew install rbenv

rbenv install --list-all

rbenv install 2.7.5
rbenv install 3.1.0

rbenv global 3.1.0

echo
echo 'Ruby versions:'
rbenv versions
