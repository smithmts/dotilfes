"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" View Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show the relative line number for each line.
set relativenumber   	
" Show the actual line number on the current line.
set number				


" Minimum number of lines to keep above and below cursor
set scrolloff=8

" Add vertical line at 72 and 80
set colorcolumn=72,80
" Set color of colorcolumn
highlight ColorColumn ctermbg=DarkGrey


" Highlight current line
set cursorline

" Enable syntax highlighting.
syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"  Allow backspace over autoindent, end of line, and start of insert.
set backspace=indent,eol,start


" Set number of spaces for autoindent
set shiftwidth=4 

" Set number of spaces for <tab>
set tabstop=4

" Keep indent when text breaks to new line
set breakindent

" enable automatic indentation
set autoindent


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable last search remaining highlighted
set nohlsearch

" Case insensitive search
set ignorecase
" Revert to case sensitive search when /C or capital in search
set smartcase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use system clipboard
set clipboard="unnamedplus"

" Enable mouse mode
set mouse="a"

" Enable hidden mode, allowing switching buffers without writing.
set hidden


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" From defaults.vim (Cherry Picked)
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2019 Dec 17
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

" Use full Vim capabilities instead of limiting to Vi support.
 set nocompatible
