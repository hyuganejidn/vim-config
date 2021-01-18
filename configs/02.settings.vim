let mapleader=" "

filetype plugin on

autocmd BufEnter * :set scroll=10
syntax on
set syntax=whitespace
syntax enable
set cc=+1
set encoding=UTF-8
set mouse=a
set clipboard+=unnamedplus
set autoread
set autowrite
set pumheight=15
set cursorline
set conceallevel=0
set smarttab
set autoindent
set si "smart indent
set scrolloff=5
set showtabline=2
set incsearch
set hlsearch
set cindent
set tabstop=2
set shiftwidth=2
set softtabstop=0
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
set list
set listchars=tab:\·\·,trail:\-,precedes:←,extends:→
set ttimeoutlen=50
set guifont=Hack\ Nerd\ Font
" set guifont=Fira\ Code\ Retina

set showtabline=2
" noremap <silent> <c-k> :wincmd k<CR>
" noremap <silent> <c-j> :wincmd j<CR>
" noremap <silent> <c-h> :wincmd h<CR>
" noremap <silent> <c-l> :wincmd l<CR>
autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

nnoremap <leader>e :edit <C-R>=fnameescape(expand('%:h')).'/'<cr>
nnoremap <leader>x :split <C-R>=fnameescape(expand('%:h')).'/'<cr>
nnoremap <leader>v :vsplit <C-R>=fnameescape(expand('%:h')).'/'<cr>
" Resize split window
nnoremap <leader>= :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
imap jj <Esc>

map <silent> <leader><CR> :noh<CR>

" colorscheme 
set termguicolors
colorscheme dracula
highlight Comment cterm=italic gui=italic
highlight NonText guifg=#4A4A59
highlight SpecialKey guifg=#4A4A59

" Coc.Vim
set shortmess+=c
set signcolumn=yes
