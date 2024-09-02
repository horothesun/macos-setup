#!/bin/bash

function aux_jenv_reset() {
  cd "$1" && printf "%s\n" "${PWD##*/}"
}
export -f aux_jenv_reset

function jenv_reset () {
  echo "jenv_reset BEGIN"
  echo "jenv versions # old"
  jenv versions
  echo
  find "${HOME}/.jenv/versions" -mindepth 1 -maxdepth 1 -print0 | \
    xargs -0 -I ^ /bin/bash -c "aux_jenv_reset \"^\"" | \
    xargs jenv remove
  echo
  /usr/libexec/java_home -V
  echo
  find "/Library/Java/JavaVirtualMachines" -mindepth 1 -maxdepth 1 -print0 | \
    xargs -0 -n 1 -I ^ jenv add "^/Contents/Home"
  echo
  echo "jenv versions # new"
  jenv versions
  echo
  echo "jenv doctor"
  jenv doctor
  echo "jenv_reset END"
}


brew install jenv

mkdir -p "${HOME}/.jenv/versions"

brew install --cask \
  "temurin@17" \
  "temurin@21"

jenv_reset
