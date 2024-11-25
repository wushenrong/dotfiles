# dotfiles

My actual configuration for Linux and Windows, managed by
[chezmoi](https://chezmoi.io).

## Configurations

This repository contains configuration for:

- Chezmoi
- Bat
- Fastfetch and Hyfetch
- Git
- Kitty
- Lazygit
- Nano
- Glow
- Ripgrep
- Tmux
- Zsh

All inside the default `XDG_CONFIG_HOME` directory, `~/.config`.

The `etc` folder contains some configuration for running OpenSSH.

## Installing The Configuration

First install chezmoi using your preferred package manager. Then run:

```bash
# Download the config and initialize chezmoi to use this config
chezmoi init wushenrong
# Apply the config
chezmoi apply
```

## License

This repository is licensed under the BSD Zero Clause License using
[SPDX](https://spdx.dev) expressions. Except for external git modules and the
`VSCode_Dark` theme for Kitty by huabeiyou which are under their own licenses
and the MIT License respectively.
