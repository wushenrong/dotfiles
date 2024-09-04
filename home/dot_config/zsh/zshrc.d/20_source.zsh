#
# Source intergration for completion and keybinds
#

# FZF
(( $+commands[fzf] )) && source <(fzf --zsh)

# Zoxide
(( $+commands[zoxide] )) && source <(zoxide init zsh --cmd cd)
