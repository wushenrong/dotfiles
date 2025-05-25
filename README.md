# dotfiles

My actual configuration for Linux and Windows, managed by [chezmoi](https://chezmoi.io).

## Configurations

This repository contains configuration for:

- Chezmoi
- Bat
- Fzf
- Git
- GnuPG
- Kitty
- Micro
- Nano
- Ripgrep
- Vim
- Zsh
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

## License

This most of the configuration is licensed under the BSD Zero Clause License
using [SPDX](https://spdx.dev) expressions. Except for external git modules
which are under their own licenses. The Zsh configuration is based on the
[antidote sample configuration][antidote], which is under the MIT License. And
the `VSCode_Dark` theme for Kitty by huabeiyou which is the MIT License. Check
for SPDX expressions for which license the configuration is under or use the
[REUSE tool](https://reuse.software) and run `reuse spdx` to get a bill of
materials.

[antidote]: https://github.com/getantidote/zdotdir
