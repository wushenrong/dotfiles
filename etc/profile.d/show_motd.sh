#!/bin/sh
# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

# shellcheck source=/dev/null
. /etc/os-release

if [ -f "$HOME/.hushlogin" ]; then
  exit
fi

printf "Welcome \033[92m%s\033[0m, this is \033[m%s\033[0m.\n\n" "$USER" "$HOST"

printf "If you are not %s please immediately logoff from this system.\n" "$USER"

printf "\033[91mUNAUTHORIZED attempts to access this system is FORBIDDEN\033[0m\n"
printf "and may result in legal actions.\n\n"

printf "This system is running %b.\n" "\033[${ANSI_COLOR}m$PRETTY_NAME\033[0m"

printf "The local system datetime is \033[32m%s\033[0m.\n" \
  "$(date '+%Y-%m-%d %H:%M:%S %z')"

if [ -x "$(command -v fastfetch)" ]; then
  fastfetch
fi

printf "All activities performed on this device are logged and monitored.\n"
