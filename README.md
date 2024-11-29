# dotfiles

My actual configuration for Linux and Windows, managed by
[chezmoi](https://chezmoi.io).

## Configurations

This repository contains configuration for:

- Chezmoi
- Bat
- Fastfetch
- Git
- Kitty
- Lazygit
- Nano
- NeoVim
- Glow
- Ripgrep
- Tmux
- Zsh

All inside the default `XDG_CONFIG_HOME` directory, `~/.config`.

The `etc` folder contains some configuration for running OpenSSH.

## Installing The Configuration

First install [chezmoi](https://chezmoi.io/install) and run the following
commands:

```bash
# Download the config and initialize chezmoi to use this config
chezmoi init wushenrong
# Apply the config
chezmoi apply
```

## License

This most of the configuration is licensed under the BSD Zero Clause License
using [SPDX](https://spdx.dev) expressions. Except for external git modules
which are under their own licenses. The NeoVim configuration is based on the
[LazyVim starter template][lazyvim], which is under the Apache 2.0 License. The
Zsh configuration is based on the [antidote sample configuration][antidote],
which is under the MIT License. And the `VSCode_Dark` theme for Kitty by
huabeiyou which is the MIT License. Check for SPDX expressions for which license
the configuration is under.

[lazyvim]: https://github.com/LazyVim/starter
[antidote]: https://github.com/getantidote/zdotdir
