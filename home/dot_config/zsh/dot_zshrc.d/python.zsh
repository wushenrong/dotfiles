# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

if (( $+commands[pipx] )); then
  autoload bashcompinit
  bashcompinit

  source <(register-python-argcomplete pipx -s zsh)
fi

if (( $+commands[uv] )); then
  source <(uv --generate-shell-completion zsh)
  source <(uvx --generate-shell-completion zsh)
fi
