" Move
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

" Resize and split window
nnoremap <leader>= :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
map ss :split<Return><C-w>w
map sv :vsplit<Return><C-w>w
" nnoremap <leader>v <C-w>v<C-w>l
"nnoremap <leader>e :edit <C-R>=fnameescape(expand('%:h')).'/'<cr>
"nnoremap <leader>x :split <C-R>=fnameescape(expand('%:h')).'/'<cr>
"nnoremap <leader>v :vsplit <C-R>=fnameescape(expand('%:h')).'/'<cr>

nmap <C-s> :w<CR>
nmap <C-q> :q<CR>
noremap qq :qa!<Enter>

noremap ; :
imap jj <Esc>
map <silent> <leader><CR> :noh<CR>
