#!/usr/bin/zsh
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
alias cd..='cd ..'
alias cls=clear

# tar
alias tarls='tar -tvf'
alias untar='tar -xvf'

# xdg
alias wget='wget --hsts-file=$XDG_DATA_HOME/wget-hsts'

# print paths and functions
alias print-fpath='for fp in $fpath; do echo $fp; done; unset fp'
alias print-path='echo $PATH | tr ":" "\n"'
alias print-functions='print -l ${(k)functions[(I)[^_]*]} | sort'

# misc
alias zshrc='$EDITOR $ZDOTDIR/.zshrc'
alias zbench='for i in {1..10}; do /usr/bin/time zsh -lic exit; done'
alias zdot='cd $ZDOTDIR'
