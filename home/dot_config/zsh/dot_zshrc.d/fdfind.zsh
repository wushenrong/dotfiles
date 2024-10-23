if (( $+commands[fd] )); then
  alias find='fd --hyperlink'

  export FZF_DEFAULT_COMMAND="fd --type f --color=always"
  export FZF_ALT_C_COMMAND="fd --type d . $HOME --color=always"
elif (( $+commands[fdfind] )); then
  alias find='fdfind'

 export FZF_DEFAULT_COMMAND="fdfind --type f --color=always"
 export FZF_ALT_C_COMMAND="fdfind --type d . $HOME --color=always"
else
  return 1
fi

export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND

alias fD='find --type d'
alias fF='find --type f'
