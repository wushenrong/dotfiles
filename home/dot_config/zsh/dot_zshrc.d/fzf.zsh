# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

(( $+commands[fzf] )) || return 1

export FZF_DEFAULT_COMMAND="fd --type f --color=always"
export FZF_DEFAULT_OPTS="--reverse --ansi"
