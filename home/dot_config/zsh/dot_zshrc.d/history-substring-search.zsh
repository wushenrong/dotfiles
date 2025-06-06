# SPDX-FileCopyrightText: 2023 mattmc3
#
# SPDX-License-Identifier: MIT

[[ -v terminfo ]] || zmodload zsh/terminfo

if [[ -n "${terminfo[kcuu1]}" ]]; then
  bindkey -M emacs "${terminfo[kcuu1]}" history-substring-search-up
  bindkey -M viins "${terminfo[kcuu1]}" history-substring-search-up
fi

if [[ -n "${terminfo[kcud1]}" ]]; then
  bindkey -M emacs "${terminfo[kcud1]}" history-substring-search-down
  bindkey -M viins "${terminfo[kcud1]}" history-substring-search-down
fi
