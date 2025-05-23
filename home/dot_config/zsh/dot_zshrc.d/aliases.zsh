#!/usr/bin/zsh
# SPDX-FileCopyrightText: 2023 mattmc3
# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: MIT
#
# .aliases - Set whatever shell aliases you want.
#

# single character aliases - be sparing!
alias _=sudo
alias l=ls
alias g=git

# mask built-ins with better defaults
alias vi=vim

# fix common typos
alias quit=exit
alias cls=clear

# ls
alias ls='eza -F -sName --group-directories-first --git --icons --color-scale'
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
alias diff=delta

# grep
# remove grep alias set by zsh-util
unalias grep

grep() {
  rg --json -C 2 "$@" | delta
}

# tar
tar() {
  command tar --posix "$@"
}

alias tarls='tar -tvf'
alias untar='tar -xvf'

# top
alias top=btop

# print paths and functions
alias print-fpath='for fp in $fpath; do echo $fp; done; unset fp'
alias print-path='echo $PATH | tr ":" "\n"'
alias print-functions='print -l ${(k)functions[(I)[^_]*]} | sort'

# misc
alias zshrc='$EDITOR $ZDOTDIR/.zshrc'
alias zbench='for i in {1..10}; do /usr/bin/time zsh -lic exit; done'
alias zdot='cd $ZDOTDIR'
