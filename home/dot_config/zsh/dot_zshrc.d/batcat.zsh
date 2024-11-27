# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

if (( $+commands[bat] )); then
  export MANPAGER="sh -c 'col -bx | bat -l man -p'"

  alias cat=bat
elif (( $+commands[batcat] )); then
  export MANPAGER="sh -c 'col -bx | batcat -l man -p'"

  alias cat=batcat
else
  return 1
fi

export MANROFFOPT="-c"

alias -g -- -h='-h 2>&1 | cat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | cat --language=help --style=plain'
