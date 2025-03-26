# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

if (( $+commands[fd] )); then
  alias find='fd --hyperlink'
  alias fD='fd --type d'
  alias fF='fd --type f'
else
  alias fD='find -type d'
  alias fF='find -type f'
fi
