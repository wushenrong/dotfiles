# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

(( $+commands[zoxide] )) || return 1
source <(zoxide init zsh --cmd cd)
