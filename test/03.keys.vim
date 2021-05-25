" Move cursor
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

" Resize split window
nnoremap <leader>= :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>

map ss :split<Return><C-w>w
map sv :vsplit<Return><C-w>w


nmap <C-s> :w<CR>
nmap <C-q> :q<CR>
noremap qq :qa!<Enter>

"noremap ; :
imap jj <Esc>
map <silent> <leader><CR> :noh<CR>
