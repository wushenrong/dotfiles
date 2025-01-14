# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

if (($ + commands[eza])); then
  alias ls='eza -g -s Name --header --group-directories-first --git --git-ignore --icons --color-scale --hyperlink'
  alias tree='ls --tree'
  alias la='ls -la'
else
  alias ls='ls -v --human-readable --group-directories-first --color --hyperlink'
  alias la='ls -lA'
fi

alias ll='ls -l'
alias lh='ll -d .*'
alias lD='ll -D'
alias lc='ll -1'

alias lsa='la -a'
alias lx='lsa -HimUuS'
alias lxa='lx -Z@'

alias lt=tree
