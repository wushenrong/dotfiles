# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

(( $+commands[bat] )) || return 1

export MANPAGER="sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -l man -p'"
export MANROFFOPT="-c"

alias cat=bat

alias -g -- -h='-h 2>&1 | cat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | cat --language=help --style=plain'
