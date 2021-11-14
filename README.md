# macOS setup

macOS initial setup.

## Factory reset

Apple support guide: [link](https://support.apple.com/en-gb/HT201065).

## Setup

- App Store: login
- System Preferences: customise
- restart
- CopyClip from [App Store](https://apps.apple.com/us/app/copyclip-clipboard-history/id595191960?mt=12)
- Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- OhMyZSH

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- Google Chrome: install then login with main account

```bash
brew install --cask google-chrome
```

- official JetBrains Mono font: [link](https://www.jetbrains.com/lp/mono/)
- run

```bash
./install.sh
```

- launch each installed cask to configure it
- ...

## TODOs

- Programmatically set password at the beginning of `install.sh` (check out `sudo -v`).
