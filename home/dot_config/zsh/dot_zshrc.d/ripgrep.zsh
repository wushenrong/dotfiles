# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

(( $+commands[rg] )) || return 1

source <(rg --generate complete-zsh)

alias grep=rg
