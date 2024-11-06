if (( $+commands[fd] )); then
  export FZF_DEFAULT_COMMAND="fd --type f --color=always"
  export FZF_ALT_C_COMMAND="fd --type d . $HOME --color=always"

  alias find='fd --hyperlink'
elif (( $+commands[fdfind] )); then
  export FZF_DEFAULT_COMMAND="fdfind --type f --color=always"
  export FZF_ALT_C_COMMAND="fdfind --type d . $HOME --color=always"

  alias fd='fdfind'
  alias find='fd'
else
  alias fD='find -type d'
  alias fF='find -type f'
  return 1
fi

export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND

alias fD='find --type d'
alias fF='find --type f'
