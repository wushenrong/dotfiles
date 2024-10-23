(( $+commands[fzf] )) || return 1

if fzf --zsh 2> /dev/null; then
  source <(fzf --zsh)
else
  source /usr/share/doc/fzf/examples/completion.zsh
  source /usr/share/doc/fzf/examples/key-bindings.zsh
fi

export FZF_DEFAULT_OPTS="--reverse --ansi"
