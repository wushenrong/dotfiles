# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

(( $+commands[corepack] )) || return 1
alias yarn='corepack yarn'
alias yarnpkg='corepack yarnpkg'
alias pnpm='corepack pnpm'
alias pnpx='corepack pnpx'
