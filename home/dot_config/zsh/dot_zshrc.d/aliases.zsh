#!/bin/zsh
# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD
#
# .aliases - Set whatever shell aliases you want.
#

# single character aliases - be sparing!
alias g=git

# fix common typos
alias quit=exit
alias cd..='cd ..'
alias cls=clear

# tar
alias tarls='tar -tvf'
alias untar='tar -xvf'

# print paths and functions
alias print-fpath='for fp in $fpath; do echo $fp; done; unset fp'
alias print-path='echo $PATH | tr ":" "\n"'
alias print-functions='print -l ${(k)functions[(I)[^_]*]} | sort'

# misc
alias load_antidote='source $ZDOTDIR/.antidote/antidote.zsh'
alias zshrc='$EDITOR $ZDOTDIR/.zshrc'
alias zbench='for i in {1..10}; do /usr/bin/time zsh -lic exit; done'
alias zdot='cd $ZDOTDIR'
