# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

if [[ -n "$TTY" ]]; then
  export GPG_TTY=$TTY
else
  export GPG_TTY=$(tty)
fi
