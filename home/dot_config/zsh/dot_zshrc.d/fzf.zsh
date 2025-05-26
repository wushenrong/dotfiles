# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

(( $+commands[fzf] )) || return 1

export FZF_DEFAULT_COMMAND="bfs -type f -mindepth 1 -L -exclude -name .git -printf '%P\n'"
export FZF_CTRL_T_COMMAND="${FZF_DEFAULT_COMMAND} -color"
export FZF_ALT_C_COMMAND="bfs -type d -mindepth 1 -nohidden -printf '%P\n'"

export FZF_CTRL_T_OPTS="--select-1 --exit-0 --ansi --preview 'less {}'"
export FZF_ALT_C_OPTS="--select-1 --exit-0 --preview 'eza -1F -sName --group-directories-first --icons --color=always {}'"

if command fzf --zsh >/dev/null 2>&1; then
  source <(fzf --zsh)
else
  export FZF_DEFAULT_OPTS="
    --height 100%
    --preview-window=right:70%,wrap
    --color fg:252,hl:67,fg+:252,hl+:81
    --color info:144,prompt:161,spinner:135,pointer:135,marker:118
  "

  source /usr/share/doc/fzf/examples/key-bindings.zsh
  source /usr/share/doc/fzf/examples/completion.zsh
fi

# Enable fzf-tab
enable-fzf-tab
