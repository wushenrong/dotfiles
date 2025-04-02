# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

export FZF_DEFAULT_COMMAND="bfs -type f -mindepth 1 -L -exclude -name .git -printf '%P\n'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND -color"
export FZF_ALT_C_COMMAND="bfs -type d -mindepth 1 -nohidden -printf '%P\n'"

export FZF_CTRL_T_OPTS="--ansi --preview '~/.lessfilter {} || less {}'"
export FZF_ALT_C_OPTS="--preview 'eza -1F -sName --group-directories-first --icons --color=always {}'"

if command fzf --zsh >/dev/null 2>&1; then
  source <(fzf --zsh)
else
  export FZF_DEFAULT_OPTS="
    --preview-window=right:60%,wrap
    --color fg:252,hl:67,fg+:252,hl+:81
    --color info:144,prompt:161,spinner:135,pointer:135,marker:118
  "
  source /usr/share/doc/fzf/examples/key-bindings.zsh
  source /usr/share/doc/fzf/examples/completion.zsh
fi

# Enable fzf-tab
enable-fzf-tab
