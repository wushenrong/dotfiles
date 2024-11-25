# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

(( $+commands[fzf] )) || return 1

if fzf --zsh >/dev/null 2>&1; then
  source <(fzf --zsh)
else
  source /usr/share/doc/fzf/examples/completion.zsh
  source /usr/share/doc/fzf/examples/key-bindings.zsh
fi

export FZF_DEFAULT_OPTS="--reverse --ansi"
