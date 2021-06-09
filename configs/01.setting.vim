
" PYTHON PROVIDERS {{{

if has('macunix')
  " OSX
  let g:python3_host_prog = '/usr/local/bin/python3' "---------- Set python 3 provider
  let g:python_host_prog = '/usr/local/bin/python2' "-------------- Set python 2 provider
elseif has('unix')
  " Ubuntu
  let g:python3_host_prog = '/usr/bin/python3' "---------- Set python 3 provider
  let g:python_host_prog = '/usr/bin/python' "-------------- Set python 2 provider
elseif has('win32') || has('win64')
  " Window
endif

" }}}

let mapleader=" "

set nocompatible "Forget compatibility with Vi. Who cares.

syntax on
set syntax=whitespace
syntax enable

set cc=+1
set encoding=UTF-8
"set fileencoding=utf-8

" Cursor
set mouse=a
set cursorline
set ruler "Display current cursor position in lower right corner.
set cmdheight=2                         " More space for displaying messages
set ttimeoutlen=50
set timeoutlen=1000

set hidden "Switch between buffers without saving
set showcmd "Show command in bottom right portion of the screen

set go-=T "Hide MacVim toolbar by default

set mousehide "Hide mouse when typing

autocmd VimEnter * wincmd p

" File 
filetype plugin on
filetype indent on
set autoread "________________________________________ Auto reloaded Edited File
set autowrite "______________Write the old file out when switching between files
set noswapfile "________________________________________-- Dont create wrap file
set nobackup "_____________________________________________---- Dont save backup
set nowb
set noswapfile
let g:jsx_ext_required = 1 "_________________________ Dont detect js file as jsx
set formatoptions-=cro                  " Stop newline continution of comments
set sessionoptions+=globals

set backupdir=~/Tem,/tmp
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=/tmp
set list
set listchars=tab:\·\·,trail:\-,precedes:←,extends:→

"Tab stuff
set tabstop=2
set shiftwidth=2
set softtabstop=0
set showtabline=2
set scrolloff=5
set si "smart indent
set cindent
set expandtab
set backspace=indent,eol,start
"Indent stuff
set smarttab
set autoindent


set clipboard+=unnamedplus
set pumheight=10
set conceallevel=0

set incsearch
set hlsearch
set wildmenu

set nu
set rnu

set guifont=Hack\ Nerd\ Font

"set guifont=Hack\ Nerd\ Font
" set guifont=Fira\ Code\ Retina
set splitbelow
set splitright

autocmd BufEnter * :set scroll=10
"Always show the status line
set laststatus=2

"Prefer a slightly higher line height
set linespace=3

"Better line wrapping 
set wrap
set textwidth=80
set formatoptions=qrn1

" colorscheme
set termguicolors
colorscheme dracula
highlight Comment cterm=italic gui=italic
highlight NonText guifg=#4A4A59
highlight SpecialKey guifg=#4A4A59

" Coc.Vim
set shortmess+=c
set signcolumn=yes
set cmdheight=1 
set pumheight=15 "______________________________--- limit autocomple candidates
set hidden "_________________________ if hidden is not set, TextEdit might fail.
set updatetime=100 "____________ smaller updatetime for CursorHold & CursorHoldI

" Folding
set foldenable
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
augroup folding_vim
  autocmd!
  autocmd FileType vim        setlocal foldmethod=marker
  autocmd FileType snippets   setlocal foldmethod=marker
augroup END

" Undo
set undolevels=100 "------------------------------- Default is 1000 -> Too large
set undoreload=1000 "----------------------------- Default is 10000 -> Too large
set undodir=~/.config/nvim/undodir "--------------- Default folder for undo step

" INTERFACE {{{

:set guioptions-=m "___________________________________________ Remove menu bar
:set guioptions-=T "____________________________________________ Remove toolbar
:set guioptions-=r "______________________________ Remove right-hand scroll bar
:set guioptions-=L "______________________________- Remove left-hand scroll bar
