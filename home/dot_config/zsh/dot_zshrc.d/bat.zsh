# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

if (( $+commands[bat] )); then
  export MANPAGER="sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -lman'"
  export MANROFFOPT="-c"

  alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
  alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'

  alias cat=bat
elif (( $+commands[batcat] )); then
  export MANPAGER="sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | batcat -p -lman'"
  export MANROFFOPT="-c"

  alias -g -- -h='-h 2>&1 | batcat --language=help --style=plain'
  alias -g -- --help='--help 2>&1 | batcat --language=help --style=plain'

  alias cat=batcat
fi
