#!/bin/bash

# update user password's timestamp (default timeout: 5 minutes)
sudo --validate

# disable the "Last Login" / MOTD message on new terminal sessions
# https://osxdaily.com/2010/06/22/remove-the-last-login-message-from-the-terminal/
touch "${HOME}/.hushlogin"

# formulae
FORMULAE_FILE="formulae"
echo "Installing the following formulae:"
cat "${FORMULAE_FILE}"
echo
<"${FORMULAE_FILE}" xargs -n 1 brew install


# fonts
FONTS_FILE="fonts"
echo "Installing the following fonts:"
cat "${FONTS_FILE}"
echo
<"${FONTS_FILE}" xargs -n 1 brew install --cask


# casks
CASKS_FILE="casks"
echo "Installing the following casks:"
cat "${CASKS_FILE}"
echo
<"${CASKS_FILE}" xargs -n 1 brew install --cask


# Intel-only casks
if [[ "$(arch)" != "arm64" ]]; then
  INTEL_ONLY_CASKS_FILE="intel_only_casks"
  echo "Installing the following Intel-only casks:"
  cat "${INTEL_ONLY_CASKS_FILE}"
  echo
  <"${INTEL_ONLY_CASKS_FILE}" xargs -n 1 brew install --cask
fi
