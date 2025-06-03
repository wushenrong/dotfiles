# dotfiles

My actual configuration for Linux and Windows, managed by [chezmoi](https://chezmoi.io).

## Configurations

This repository contains configuration for:

- chezmoi
- bat
- fzf
- Git
- GnuPG
- Kitty
- nano
- ripgrep
- vim
- yazi
- yt-dlp
- zsh
- and more

All configurations are stored in the default XDG Home Directories,
`~/.config` and `~/.local/share`.

The `etc` folder contains some configuration for running OpenSSH.

## Installing The Configuration

First install [chezmoi](https://chezmoi.io/install) and run the following
commands:

```bash
# Download and initialize chezmoi to use this dotfiles configuration
chezmoi init wushenrong
# Apply the config
chezmoi apply
```

## External configuration

Configuration for NixOS can be found at
[wsixor](https://github.com/wushenrong/wsixor).

## License

Most of the configuration is licensed under the BSD Zero Clause License using
[SPDX](https://spdx.dev) expressions. Except for git modules which are
under their own licenses, please check those repositories for their license.
Some of the [antidote configuration][antidote] for zsh is under the MIT License.
And the `VSCode_Dark` theme for Kitty by huabeiyou is also under the
MIT License.

Check for SPDX expressions for which license the configuration is under or use
the [REUSE tool](https://reuse.software) and run `reuse spdx` to get a bill of
materials.

[antidote]: https://github.com/getantidote/zdotdir
