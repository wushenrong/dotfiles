if (( $+commands[eza] )); then
  alias ls='eza --classify --group --header --group-directories-first --git --git-ignore --icons --color-scale all --hyperlink'
  alias tree='ls --tree'
  alias la='ls -la'
else
  alias ls='ls --classify --group-directories-first --hyperlink --color --human-readable'
  alias la='ls -lA'
fi

alias ll='ls -l'
alias ldot='ll -d .*'
alias lD='ll -D'
alias lF='ll -F'
alias lc='ll -1'

alias lA='ll --sort=acc'
alias lC='ll --sort=cr'
alias lM='ll --sort=mod'
alias lS='ll --sort=size'
alias lX='ll --sort=ext'

alias lsa='la -a'
alias lx='lsa -HimUuS'
alias lxa='lx -Z@'

alias lt=tree
