" INTERFACE {{{

":set guioptions-=m "___________________________________________ Remove menu bar
":set guioptions-=T "____________________________________________ Remove toolbar
":set guioptions-=r "______________________________ Remove right-hand scroll bar
":set guioptions-=L "______________________________- Remove left-hand scroll bar

" Folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

"Tab stuff
set tabstop=2
set shiftwidth=2
set softtabstop=0
set showtabline=2
set smarttab
set smarttab
set autoindent

" Coc.Vim
set shortmess+=c
set signcolumn=yes
set cmdheight=1 
set pumheight=15 "______________________________--- limit autocomple candidates
set hidden "_________________________ if hidden is not set, TextEdit might fail.
"set updatetime=300 "____________ smaller updatetime for CursorHold & CursorHoldI

" File
set autoread "________________________________________ Auto reloaded Edited File
set noswapfile "________________________________________-- Dont create wrap file
set nobackup "_____________________________________________---- Dont save backup
let g:jsx_ext_required = 1 "_________________________ Dont detect js file as jsx

" colorscheme 
set termguicolors
colorscheme dracula
highlight Comment cterm=italic gui=italic
highlight NonText guifg=#4A4A59
highlight SpecialKey guifg=#4A4A59

autocmd BufEnter * :set scroll=10
autocmd VimEnter * NERDTree

