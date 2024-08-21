#
# Commands that uses eval for initalization
#

# FZF
(( $+commands[fzf] )) && eval "$(fzf --zsh)"

# Zoxide
(( $+commands[zoxide] )) && eval "$(zoxide init zsh --cmd cd)"
