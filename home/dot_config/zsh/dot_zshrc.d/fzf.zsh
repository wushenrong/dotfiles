# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

(( $+commands[fzf] )) || return 1

source <(fzf --zsh)

export FZF_DEFAULT_OPTS="--reverse --ansi"
