" SPDX-FileCopyrightText: 2024 Samuel Wu
"
" SPDX-License-Identifier: 0BSD

" Wrap and check for spell in text filetypes
augroup wrap_spell
  autocmd!
  autocmd FileType text,plaintex,typst,gitcommit,markdown setlocal wrap
  autocmd FileType text,plaintex,typst,gitcommit,markdown setlocal spell
augroup end

" Fix conceallevel for json files
augroup json_conceal
  autocmd!
  autocmd FileType *.json,*.jsonc,*.json5 setlocal conceallevel=0
augroup end

" Disable colorcolumns
augroup disable_colorcolumn
  autocmd!
  autocmd FileType help setlocal colorcolumn=0
augroup end
