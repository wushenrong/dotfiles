# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

(( $+commands[chezmoi] )) || return 1

source <(chezmoi completion zsh)
