# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

(( $+commands[fzf] )) || return 1

export FZF_DEFAULT_COMMAND="fd -t f --strip-cwd-prefix -L -H -E .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND --color=always"
export FZF_ALT_C_COMMAND="fd -t d"

export FZF_CTRL_T_OPTS="--ansi"

if (( $+commands[eza] )); then
  export FZF_ALT_C_OPTS="--preview 'eza -1F -sName --group-directories-first --icons --color=always {}'"
else
  export FZF_ALT_C_OPTS="--preview 'ls -1F --group-directories-first --color=always {}'"
fi

if (( $+commands[bat] )); then
  export FZF_CTRL_T_OPTS="$FZF_CTRL_T_OPTS --preview 'bat -n --color=always {}'"
elif (( $+commands[batcat] )); then
  export FZF_CTRL_T_OPTS="$FZF_CTRL_T_OPTS --preview 'batcat -n --color=always {}'"
fi

if command fzf --zsh 2>/dev/null; then
  source /usr/share/doc/fzf/examples/key-bindings.zsh
else
  source <(fzf --zsh)
fi
