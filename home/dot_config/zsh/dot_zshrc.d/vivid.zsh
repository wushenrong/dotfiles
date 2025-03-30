# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

(( $+commands[vivid] )) || return 1

export LS_COLORS="$(vivid generate molokai)"
