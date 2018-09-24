" plugins {{{
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'the31k/vim-colors-tayra'
Plug 'hukl/Smyck-Color-Scheme'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ternjs/tern_for_vim'

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'

" Optional:
"Plug 'honza/vim-snippets'

Plug 'ervandew/supertab'

Plug 'tpope/vim-surround'

Plug 'leafgarland/typescript-vim'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'lervag/vimtex'

Plug 'tpope/vim-fugitive'

Plug 'metakirby5/codi.vim'

Plug 'mattn/gist-vim'

Plug 'mattn/webapi-vim'

call plug#end()
" }}}

" plugins settings {{{
autocmd FileType javascript setlocal omnifunc=tern#Complete

" Airline {{{

"let g:airline_theme='gruvbox'
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#show_buffers = 0
"let g:airline#extensions#tabline#show_buffers = 0
"let g:airline#extensions#tabline#fnamemod = '%:t'

" }}}

let g:gist_post_private = 1

" }}}

" syntax highlight {{{
" }}}

" key mappings {{{
let mapleader=","
inoremap jk <esc>
inoremap <esc> <nop>
map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>
map <C-e> :CtrlPMRUFiles<CR>
"if bufwinnr(1)
  "map = :vertical resize +10<CR>
  "map - :vertical resize -10<CR>
"endif
" }}}

" global settings{{{

" refreshs file, when it's updated in filesystem
set autoread

" enables syntax highlight
filetype plugin on
set omnifunc=syntaxcomplete#Complete

colors tayra
"colors Smyck-Color-Scheme
syntax enable

set nu
set rnu
set nuw=4
autocmd InsertEnter * set nornu
autocmd InsertLeave * set rnu
autocmd BufEnter * set nornu

set tabstop=4
set shiftwidth=4
set expandtab

set clipboard=unnamed
set timeoutlen=200

let g:python_host_prog='/usr/local/bin/python'

" }}}

" vim:foldmethod=marker
