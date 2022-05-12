" Liberally borrowed from:
" https://github.com/craftzdog/dotfiles-public/blob/master/.config/nvim/init.vim
"

" Settings "{{{
" ---------------------------------------------------------------------
syntax on
syntax enable

set nocompatible
set backspace=indent,eol,start
set backup
set history=50
set hlsearch
set ignorecase
set incsearch
set number
set ruler
set textwidth=140 nosmartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set updatetime=100
set showcmd

set backupdir^=~/.vim/_backup//    " where to put backup files.
set directory^=~/.vim/_temp//      " where to put swap files.

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
"}}}

" File types "{{{
" ---------------------------------------------------------------------
autocmd FileType ruby compiler ruby
"}}}

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
"}}}

" Syntax theme "{{{
" ---------------------------------------------------------------------

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark

  " use Dracula
  colorscheme dracula
endif
"}}}
