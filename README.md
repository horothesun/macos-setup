# macOS setup

macOS Homebrew-based initial setup.

## Factory reset

Apple support guide: [link](https://support.apple.com/en-gb/HT201065).

## Setup

- System Preferences: customise
- restart
- App Store: login
- CopyClip from [App Store](https://apps.apple.com/us/app/copyclip-clipboard-history/id595191960?mt=12)
- Homebrew: install and restart terminal app

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- OhMyZSH: install and restart terminal app

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

- launch each installed cask to configure it​
- GitHub SSH key: generate and set ([guide](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent))
- `git`: set global user name and email ([guide](https://stackoverflow.com/a/26368148))

```bash
git config --global user.name <GITHUB_USER_NAME>
git config --global user.email <GITHUB_USER_EMAIL>
```

- dot-files ([repo](https://github.com/horothesun/dotfiles))

```bash
git clone https://github.com/horothesun/dotfiles.git
```

- `pass`: run the install script then clone your private passwords repo into `~/.password-store`

```bash
./pass_install.sh
```

- `jEnv`: run the install script then use `jenv add <path>` to add any missing JDK version to jEnv and `jenv global 1.8` to set the default global JDK version

```bash
./jenv_install.sh
```

- `rbenv`

```bash
./rbenv_install.sh
```

- `nvm`

```bash
./nvm_install.sh
```

- `pyenv`

```bash
./pyenv_install.sh
```

## TODOs

- Ruby gems (`gem update`).
- Programmatically set password at the beginning of `install.sh` (check out `sudo -v`).
- IntelliJ IDEA Share IDE settings: [link](https://www.jetbrains.com/help/idea/sharing-your-ide-settings.html).
