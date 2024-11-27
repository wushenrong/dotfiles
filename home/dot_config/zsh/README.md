# zshrc

My configuration for the [Z Shell aka Zsh](https://www.zsh.org/):

- Better defaults from [belak/zsh-utils](https://github.com/belak/zsh-utils)
- The [Powerlevel10k prompt](https://github.com/romkatv/powerlevel10k)
- [Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [History substring searching][history-sub-search]
- [Syntax highlighting][syntax]
- And so much more using [antidote](https://antidote.sh/) and their
  [sample zsh configuration](https://github.com/getantidote/zdotdir)

[history-sub-search]: https://github.com/zsh-users/zsh-history-substring-search
[syntax]: https://github.com/zdharma-continuum/fast-syntax-highlighting

## Installation

Use [chezmoi](https://chezmoi.io/) to download the entire dotfiles repository
and only apply the `~/.config/zsh` directory. Or clone the repository to a
temporary directory, and rename all `dot_` files and folders to `.` files and
folders. Lastly symlink `~/.zshenv` to `$ZDOTDIR/.zshenv` and restart zsh.

```zsh
# Setting the ZDOTDIR directory, which is where the zsh configuration is going
# to live
export XDG_CONFIG_DIR=$HOME/.config
export ZDOTDIR=$XDG_CONFIG_DIR/zsh

# Clone the repository to a temporary folder
cd /tmp
git clone https://github.com/wushenrong/dotfiles.git

# Copy the zsh folder to ZDOTDIR
cd dotfiles
cp -r home/dot_config/zsh $ZDOTDIR

# Cd into ZDOTDIR and rename dot_ files and folders to . files and folders
cd $ZDOTDIR
mv dot_zshenv .zshenv # Do this for every dot_ files and folders

# Symlink .zshenv to $ZDOTDIR/.zshenv
ln -s $ZDOTDIR/.zshenv ~/.zshenv
```

## License

This repository is licensed under the BSD Zero Clause License using
[SPDX](https://spdx.dev) expressions.
