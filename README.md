# Noah Rubin's dotfiles

## Overview

This repository contains common configuration files (dotfiles) in a structure compatible with [hoard](https://hoard.rs).

## Getting Started

### Install Hoard CLI

Refer to the [hoard documentation](https://hoard.rs/getting-started/installation.html) for installation instructions.

### Clone this repository

Refer to the  [hoard documentation](https://hoard.rs/file-locations.html) for the proper path to clone the repository.
On Linux, you can use the following commands:

```bash
HOARD_DATA_HOME=$(test -z "${XDG_DATA_HOME}" && echo "${HOME}/.local/share/hoard/" || echo "${XDG_DATA_HOME}/hoard/")
git clone https://github.com/noahrubin/dotfiles.git "${HOARD_DATA_HOME}"
hoard -c "${HOARD_DATA_HOME}/hoard/config-file/config.toml" restore hoard
```

## Applications and Operating Systems Supported

| Applications          | Operating Systems | Notes                                    |
|-----------------------|-------------------|------------------------------------------|
| [Bash](bash)          | Linux             |                                          |
| [Hoard](hoard)        | Linux, Windows    |                                          |
| [Neovim](nvim)        | Linux, Windows    | Has desktop and server-specific versions |
| [Poetry](pypoetry)    | Linux, Windows    |                                          |
| [Starship](starship)  | Linux, Windows    |                                          |
| [Tmux](tmux)          | Linux             |                                          |
| [Vim](vim)            | Linux, Windows    | Has desktop and server-specific versions |
