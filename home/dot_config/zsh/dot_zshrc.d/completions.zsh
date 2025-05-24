# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

(
  source /etc/os-release
  [[ "$ID" == "debian" ]] || [[ "$ID_LIKE" == *"debian"* ]] || return 1
)

if (( $+commands[chezmoi] )); then
  source <(chezmoi completion zsh)
fi

if (( $+commands[glow] )); then
  source <(glow completion zsh)
fi

if (( $+commands[navi] )); then
  source <(navi widget zsh)
fi

if (( $+commands[pipx] )); then
  autoload -U bashcompinit
  bashcompinit

  source <(register-python-argcomplete pipx)
fi

if (( $+commands[uv] )); then
  source <(uv --generate-shell-completion zsh)
  source <(uvx --generate-shell-completion zsh)
fi
