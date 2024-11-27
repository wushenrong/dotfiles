" SPDX-FileCopyrightText: 2024 Samuel Wu
"
" SPDX-License-Identifier: 0BSD

" Wrap and check for spell in text filetypes
augroup wrap_spell
  autocmd!
  au FileType text,plaintex,typst,gitcommit,markdown setlocal wrap spell
augroup END

" Fix conceallevel for json files
augroup json_conceal
  autocmd!
  au FileType *.json,*.jsonc,*.json5 setlocal conceallevel=0
augroup END
