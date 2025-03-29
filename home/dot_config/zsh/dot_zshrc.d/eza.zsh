# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

(( $+commands[eza] )) || return 1

alias ls='eza -F -sName --group-directories-first --git --icons --color-scale --hyperlink'
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
