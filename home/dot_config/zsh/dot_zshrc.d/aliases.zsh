#!/bin/zsh
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
alias tarls="tar -tvf"
alias untar="tar -xvf"

# misc
alias please=sudo
alias zshrc='${EDITOR:-nano} "${ZDOTDIR:-$HOME}"/.zshrc'
alias zbench='for i in {1..10}; do /usr/bin/time zsh -lic exit; done'
alias zdot='cd ${ZDOTDIR:-$HOME}'
