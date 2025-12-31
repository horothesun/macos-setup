# macOS setup

[![CI](https://github.com/horothesun/macos-setup/actions/workflows/ci.yml/badge.svg)](https://github.com/horothesun/macos-setup/actions/workflows/ci.yml)
[![Renovate enabled](https://img.shields.io/badge/renovate-enabled-brightgreen.svg?style=flat-square)](https://renovatebot.com)
[![Mergify enabled](https://img.shields.io/badge/Mergify-enabled-success.svg?style=flat-square&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAAlwSFlzAAALEwAACxMBAJqcGAAABCRpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDUuNC4wIj4KICAgPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICAgICAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgICAgICAgICAgeG1sbnM6dGlmZj0iaHR0cDovL25zLmFkb2JlLmNvbS90aWZmLzEuMC8iCiAgICAgICAgICAgIHhtbG5zOmV4aWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20vZXhpZi8xLjAvIgogICAgICAgICAgICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgICAgICAgICAgIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyI+CiAgICAgICAgIDx0aWZmOlJlc29sdXRpb25Vbml0PjI8L3RpZmY6UmVzb2x1dGlvblVuaXQ+CiAgICAgICAgIDx0aWZmOkNvbXByZXNzaW9uPjA8L3RpZmY6Q29tcHJlc3Npb24+CiAgICAgICAgIDx0aWZmOlhSZXNvbHV0aW9uPjcyPC90aWZmOlhSZXNvbHV0aW9uPgogICAgICAgICA8dGlmZjpPcmllbnRhdGlvbj4xPC90aWZmOk9yaWVudGF0aW9uPgogICAgICAgICA8dGlmZjpZUmVzb2x1dGlvbj43MjwvdGlmZjpZUmVzb2x1dGlvbj4KICAgICAgICAgPGV4aWY6UGl4ZWxYRGltZW5zaW9uPjMyPC9leGlmOlBpeGVsWERpbWVuc2lvbj4KICAgICAgICAgPGV4aWY6Q29sb3JTcGFjZT4xPC9leGlmOkNvbG9yU3BhY2U+CiAgICAgICAgIDxleGlmOlBpeGVsWURpbWVuc2lvbj4zMjwvZXhpZjpQaXhlbFlEaW1lbnNpb24+CiAgICAgICAg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)](https://mergify.com)

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
- IntelliJ IDEA: `Settings -> Settings Sync` with your email.

- `alacritty` - new instance shortcut:
  - setup the Apple Automator workflow with `cp -R NewAlacrittyInstance.workflow ~/Library/Services/`,
    then launch `System Preferences -> Keyboard -> Shortcuts` and set the
    `Services | General -> NewAlacrittyInstance` shortcut to `⌥⌘/`.
    N.B.: restart the system or each individual app to enable the shortcut on them (`killall Finder` included).
  - after `stow`-ing Alacritty's dotfile/scripts, run
    `ln -s ~/bin/alacritty_new_window_same_dir.sh /usr/local/bin/alacritty_new_window_same_dir.sh`

## TODOs

- New space with terminal on display 1:
  setup base script with `cp create_new_space_with_terminal.scpt ~/bin/`, then
  setup Apple Automator workflow with
  `cp -R NewSpaceWithTerminalOnDisplay1.workflow ~/Library/Services/`, then
  launch `System Preferences -> Keyboard -> Shortcuts` and set the
  `Services | General -> NewSpaceWithTerminalOnDisplay1` shortcut to `⌥⌘1`.
  N.B.: restart the system or each individual app to enable the shortcut on them (`killall Finder` included).

- New space with terminal on display 2:
  setup base script with `cp create_new_space_with_terminal.scpt ~/bin/`, then
  setup Apple Automator workflow with
  `cp -R NewSpaceWithTerminalOnDisplay2.workflow ~/Library/Services/`, then
  launch `System Preferences -> Keyboard -> Shortcuts` and set the
  `Services | General -> NewSpaceWithTerminalOnDisplay2` shortcut to `⌥⌘2`.
  N.B.: restart the system or each individual app to enable the shortcut on them (`killall Finder` included).
