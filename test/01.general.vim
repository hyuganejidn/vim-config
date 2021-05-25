let mapleader=" "

"Enable filetypes
filetype on
filetype plugin on
filetype indent on
syntax enable
syntax on
set autowrite "Write the old file out when switching between files.


"Show command in bottom right portion of the screen
set showcmd

set syntax=whitespace
set cc=+1
set encoding=UTF-8
set mouse=a
set clipboard+=unnamedplus
set autoread
set autowrite
set pumheight=15

"Ever notice a slight lag after typing the leader key + command? This lowers
"the timeout.
"set timeoutlen=50


"set nrformats-=octal "____________________________________Format number as octal

set backspace=indent,eol,start "_________________ Allow backspace in insert mode

set cursorline
set ruler "________________Display current cursor position in lower right corner.
set conceallevel=0
set si "____________________________________________________________smart indent.
set scrolloff=5
set incsearch
set hlsearch
set cindent
set wildmenu

set nu
set rnu

set backupdir=~/Tem,/tmp
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=/tmp
set splitbelow
set splitright
set nobackup
set nowb
set noswapfile
set ttimeoutlen=50

set list
set listchars=tab:\·\·,trail:\-,precedes:←,extends:→
set guifont=Hack\ Nerd\ Font
" set guifont=Fira\ Code\ Retina
" autocmd VimEnter * wincmd p


