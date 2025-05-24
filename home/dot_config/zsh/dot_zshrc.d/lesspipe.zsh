# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

if (( $+commands[lesspipe.sh] )); then
  source <(lesspipe.sh)
elif (( $+commands[lesspipe] )); then
  source <(lesspipe)
fi
