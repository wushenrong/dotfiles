" SPDX-FileCopyrightText: 2024 Samuel Wu
"
" SPDX-License-Identifier: 0BSD

" Bootstrap vim-plug
let data_dir = '~/.config/vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install Plugins
call plug#begin()

" Install Theme
Plug 'tomasiser/vim-code-dark'
let g:codedark_transparent=1
let g:codedark_italics=1

" Install Better Status Lines
Plug 'vim-airline/vim-airline'
let g:airline_theme = 'codedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

autocmd VimEnter * nested silent! colorscheme codedark

" Enable Better Settings, Do Not Need To Set Defaults
Plug 'tpope/vim-sensible'

" Add Highlight On Yank
Plug 'machakann/vim-highlightedyank'

" Better Language Support
Plug 'sheerun/vim-polyglot'

" Autodetect File Indentation
Plug 'tpope/vim-sleuth'

" Install File Manager
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Install FZF Support
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
nnoremap <leader>sh :HelpTags<cr>
nnoremap <leader>sk :Maps<cr>
nnoremap <leader>sf :Files<cr>
nnoremap <leader>ss :HelpTags<cr>
nnoremap <leader>sg :RG<cr>
nnoremap <leader><leader> :Buffers<cr>
nnoremap <leader>/ :BLines<cr>
nnoremap <leader>s/ :Lines<cr>
nnoremap <leader>sv :call fzf#vim#files(data_dir)<cr>

" Install Git Plugins
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Surround With Quotes And Tags
Plug 'tpope/vim-surround'

" Indent Lines And Rainbow Brackets
Plug 'preservim/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'vim-plug', 'nerdtree']

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

" Autopairs
Plug 'jiangmiao/auto-pairs'

" Comments
Plug 'tpope/vim-commentary'

" Install Start Time Analyzer
Plug 'dstein64/vim-startuptime'

" Install NerdFont/DevIcons
Plug 'ryanoasis/vim-devicons'

call plug#end()
