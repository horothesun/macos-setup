# macOS setup

[![CI](https://github.com/horothesun/macos-setup/actions/workflows/ci.yml/badge.svg)](https://github.com/horothesun/macos-setup/actions/workflows/ci.yml)

macOS Homebrew-based setup.

## Factory reset

Apple support guide: [link](https://support.apple.com/en-gb/HT201065).

## Setup

- System Preferences
  - customise `Sharing -> Computer Name`,
  - `Apple ID` login, etc.
- restart
- App Store: login
- Homebrew: install ([guide](https://docs.brew.sh/Installation)) and restart terminal app
- OhMyZSH: install ([guide](https://github.com/ohmyzsh/ohmyzsh#basic-installation)) and restart terminal app
- official JetBrains Mono font ([home](https://www.jetbrains.com/lp/mono/))
- run the main installation script, then launch [each installed cask](casks) to configure them

```bash
./install.sh
```

- GitHub SSH key: generate and set ([guide](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent))
- `git`: set global configuration, user name and email ([guide](https://stackoverflow.com/a/26368148))

```bash
./git_global_configs.sh
git config --global user.name <GITHUB_USER_NAME>
git config --global user.email <GITHUB_USER_EMAIL>
```

- `pass`: run the install script then set your GPG keys and private passwords git repo (follow private notes)

```bash
./pass_install.sh
```

- environment managers

```bash
./jenv_install.sh

# Run the following to make sure JAVA_HOME gets set.
# N.B.: JDK paths must be added to jEnv first!
jenv enable-plugin export
```

```bash
./rbenv_install.sh
```

```bash
./nvm_install.sh
```

```bash
./pyenv_install.sh
```

- dot-files ([repo](https://github.com/horothesun/dotfiles))
- Neovim: install the `vim-plug` plugin manager ([guide](https://github.com/junegunn/vim-plug#neovim)),
  then install `nvim` plugins and `CoC` extensions with

```bash
nvim -c "PlugInstall|qa" ; nvim
```

- Ruby gems: run `gem update` after initialising `rbenv` and setting the global Ruby version to the desired default one.
- `uni` - Unicode query CLI tool ([repo](https://github.com/arp242/uni))

```bash
./uni_install.sh
```

- `alacritty` - new instance shortcut: setup the Apple Automator workflow with
  `cp -R NewAlacrittyInstance.workflow ~/Library/Services/`, then launch
  `System Preferences -> Keyboard -> Shortcuts` and set the
  `Services | General -> NewAlacrittyInstance` shortcut to `⌥⌘/`.
  N.B.: restart the system or each individual app to enable the shortcut on them (`killall Finder` included).

## TODOs

- IntelliJ IDEA Share IDE settings: [link](https://www.jetbrains.com/help/idea/sharing-your-ide-settings.html).
