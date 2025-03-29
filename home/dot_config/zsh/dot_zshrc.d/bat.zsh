# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

if (( $+commands[bat] )); then
  export MANPAGER="sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -plman'"
  export MANROFFOPT="-c"

  alias -g -- -h='-h 2>&1 | bat -plhelp'
  alias -g -- --help='--help 2>&1 | bat -plhelp'

  alias cat=bat
elif (( $+commands[batcat] )); then
  export MANPAGER="sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | batcat -plman'"
  export MANROFFOPT="-c"

  alias -g -- -h='-h 2>&1 | batcat -plhelp'
  alias -g -- --help='--help 2>&1 | batcat -plhelp'

  alias bat=batcat
  alias cat=batcat
fi
