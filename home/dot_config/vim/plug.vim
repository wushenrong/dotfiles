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

" Install Better Status Lines
Plug 'vim-airline/vim-airline'

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

" Install FZF Support
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Install Git Plugins
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Surround With Quotes And Tags
Plug 'tpope/vim-surround'

" Indent Lines And Rainbow Brackets
Plug 'preservim/vim-indent-guides'
Plug 'luochen1990/rainbow'

" Install Start Time Analyzer
Plug 'dstein64/vim-startuptime'

" Install NerdFont/DevIcons
Plug 'ryanoasis/vim-devicons'

call plug#end()
