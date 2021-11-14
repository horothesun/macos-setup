# macOS setup

macOS initial setup.

## Factory reset

Apple support guide: [link](https://support.apple.com/en-gb/HT201065).

## Setup

- System Preferences: customise
- restart
- CopyClip from App Store
- Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- OhMyZSH: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- `brew install --cask google-chrome`
- Google Chrome: login with main account
- run `./install.sh`
- launch each installed cask to configure it
- ...

## TODOs

- Programmatically set password at the beginning of `install.sh` (check out `sudo -v`).
