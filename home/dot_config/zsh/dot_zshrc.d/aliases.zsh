#!/usr/bin/env zsh
# SPDX-FileCopyrightText: 2023 mattmc3
# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: MIT
#
# .aliases - Set whatever shell aliases you want.
#

# mask built-ins with better defaults
alias vi=vim

# fix common typos
alias quit=exit
alias cls=clear

# aliases belak/zsh-utils
alias type="type -a"
alias mkdir="mkdir -p"

# ls
alias ls='eza -F -sName --time-style=long-iso --group-directories-first --git --icons --color-scale all'
alias l=ls
alias ll='ls -lh'

alias la='ll -a'
alias lD='ll -D'
alias lc='ll -1'
alias lh='ll -d .*'

alias lsa='la -a'
alias lx='lsa -gHimUuS'
alias lxa='lx -Z@'

alias lt='ls -T'
alias tree=lt

# find
alias find=fd
alias fD='find -t d'
alias fF='find -t f'

# diff
(( $+commands[delta] )) && alias diff=delta

# grep
(( $+commands[rg] )) && grep() {
  rg --json -C 2 "$@" | diff
}

# tar
alias tar='bsdtar --posix'
alias tarls='bsdtar -tvf'
alias untar='bsdtar -xvf'

# top
(( $+commands[btop] )) && alias top=btop

# print paths and functions
alias print-fpath='for fp in $fpath; do printf "%s\n" "$fp"; done; unset fp'
alias print-path='printf "%s\n" "$PATH" | tr ":" "\n"'
alias print-functions='print -l ${(k)functions[(I)[^_]*]} | sort'

# misc
alias zshrc='${EDITOR} ${ZDOTDIR}/.zshrc'
alias zbench='for i in {1..10}; do /usr/bin/time zsh -lic exit; done'
alias zdot='cd ${ZDOTDIR}'
