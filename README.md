# macOS setup

macOS Homebrew-based initial setup.

## Factory reset

Apple support guide: [link](https://support.apple.com/en-gb/HT201065).

## Setup

- System Preferences
  - customise `Sharing -> Computer Name`,
  - `Apple ID` login, etc.
- restart
- App Store: login
- CopyClip from [App Store](https://apps.apple.com/us/app/copyclip-clipboard-history/id595191960?mt=12)
- Homebrew: install ([guide](https://docs.brew.sh/Installation)) and restart terminal app
- OhMyZSH: install ([guide](https://github.com/ohmyzsh/ohmyzsh#basic-installation)) and restart terminal app
- official JetBrains Mono font ([home](https://www.jetbrains.com/lp/mono/))
- run the main install script then launch [each installed cask](casks) to configure it

```bash
./install.sh
```

- GitHub SSH key: generate and set ([guide](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent))
- `git`: set global user name and email ([guide](https://stackoverflow.com/a/26368148))

```bash
git config --global user.name <GITHUB_USER_NAME>
git config --global user.email <GITHUB_USER_EMAIL>
```

- `pass`: run the install script then set your GPG keys and private passwords git repo (follow private notes)

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

- dot-files ([repo](https://github.com/horothesun/dotfiles))

```bash
cd ~ ; git clone git@github.com:horothesun/dotfiles.git ; cd dotfiles
```

- Neovim: install the `vim-plug` plugin manager ([guide](https://github.com/junegunn/vim-plug#neovim)), then install `nvim` plugins and `CoC` extensions with

```bash
nvim -c "PlugInstall|qa" ; nvim
```

- Ruby gems: run `gem update` after initialising `rbenv` and setting the global Ruby version to the desired default one.

## TODOs

- Programmatically set password at the beginning of `install.sh` (check out `sudo -v`).
- IntelliJ IDEA Share IDE settings: [link](https://www.jetbrains.com/help/idea/sharing-your-ide-settings.html).
