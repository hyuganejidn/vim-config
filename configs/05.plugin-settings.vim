" Vim color highlighting
"let g:Hexokinase_highlighters = ['virtual']
"let g:Hexokinase_virtualText = '▩'


" Tagbar 
nmap <F8> :TagbarToggle<CR>

"lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" FILE TYPES {{{

augroup language_react
    autocmd!
    autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
augroup END

" }}}
