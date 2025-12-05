# dotfiles

My actual configuration for Linux and Windows, managed by
[chezmoi](https://chezmoi.io).

## Usage

Install [chezmoi](https://chezmoi.io/install) and run the following commands:

```bash
# Download and initialize chezmoi to use this dotfiles configuration
chezmoi init wushenrong
# Apply the configuration
chezmoi apply
```

Configurations are now stored in their respective OS-specific directories,
`.config` on Linux and `AppData` on Windows. If a configuration does not support
`AppData` then it falls back to `.config`.

## External Configuration

This configuration downloads additional configurations, files, and plugins from
other repositories:

- [antidote](https://github.com/mattmc3/antidote)
- [kitty-themes](https://github.com/kovidgoyal/kitty-themes)
- [mpv-config](https://github.com/wushenrong/mpv-config)
- [mpvnet-config](https://github.com/wushenrong/mpvnet-config)
- [nano-syntax-highlighting](https://github.com/galenguyer/nano-syntax-highlighting)
- [tpm](https://github.com/tmux-plugins/tpm)
- [vivid](https://github.com/sharkdp/vivid)
- [zdotdir](https://github.com/wushenrong/zdotdir)

## License

This repostory is licensed under the BSD Zero Clause License using
[SPDX](https://spdx.dev) expressions.
