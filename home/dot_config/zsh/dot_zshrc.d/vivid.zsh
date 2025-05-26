# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

if (( $+commands[vivid] )); then
  export LS_COLORS="$(vivid generate molokai)"
else
  source <(dircolors)
fi
