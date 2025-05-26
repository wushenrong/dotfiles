# SPDX-FileCopyrightText: 2009-2011 Robby Russell and contributors
# SPDX-FileCopyrightText: 2011-2017 Sorin Ionescu and contributors
# SPDX-FileCopyrightText: 2018-2019 Kaleb Elwert and contributors
#
# SPDX-License-Identifier: MIT
# From belak/zsh-utils

# macOS utils everywhere
if [[ "${OSTYPE}" == darwin* ]]; then
  alias o='open'
elif [[ "${OSTYPE}" == cygwin* ]]; then
  alias o='cygstart'
  alias pbcopy='tee > /dev/clipboard'
  alias pbpaste='cat /dev/clipboard'
elif [[ "${OSTYPE}" == linux-android ]]; then
  alias o='termux-open'
  alias pbcopy='termux-clipboard-set'
  alias pbpaste='termux-clipboard-get'
else
  alias o='xdg-open'

  if [[ -n "${DISPLAY}" ]]; then
    if (( $+commands[xclip] )); then
      alias pbcopy='xclip -selection clipboard -in'
      alias pbpaste='xclip -selection clipboard -out'
    elif (( $+commands[xsel] )); then
      alias pbcopy='xsel --clipboard --input'
      alias pbpaste='xsel --clipboard --output'
    fi
  else
    if (( $+commands[wl-copy] && $+commands[wl-paste] )); then
      alias pbcopy='wl-copy'
      alias pbpaste='wl-paste'
    fi
  fi
fi

alias pbc='pbcopy'
alias pbp='pbpaste'

# Load more specific 'run-help' function from $fpath.
(( $+aliases[run-help] )) && unalias run-help && autoload -Uz run-help
alias help=run-help
