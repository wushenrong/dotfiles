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

My zsh configuration is at <https://github.com/wushenrong/zdotdir> and is under
the MIT License. My mpv configuration is at
<https://github.com/wushenrong/mpv-config> and is under mixed licenses.

## License

This repository is under the 0BSD, but external configuration, projects, and
files downloaded are under difference licenses.
