hi CocErrorSign  ctermfg=Red guifg=#f2323f
hi CocWarningSign  ctermfg=Brown guifg=#37cdfa
hi CocInfoSign  ctermfg=Yellow guifg=#fcb017
hi CocHintSign  ctermfg=Blue guifg=#0083e0

" Install coc extensions
if match(&rtp, 'coc.nvim') >= 0
    let s:languages = [
        \ 'coc-html',
        \ 'coc-css',
        "\ 'coc-clangd',
        \ 'coc-tsserver',
        "\ 'coc-ccls',
        \ 'coc-flutter',
        \ 'coc-sql',
        \ 'coc-docker',
        \ 'coc-java',
        \ 'coc-json',
        \ 'coc-phpls',
        \ 'coc-python',
        \ 'coc-vimtex',
        \ 'coc-vimlsp',
        \ 'coc-svg',
        \ 'coc-sh',
        \ 'coc-solargraph',
        \ ]

    let s:frameworks = [
        \ 'coc-vetur',
        \ 'coc-vimlsp',
        \ ]

    let s:linters = [
        \ 'coc-stylelintplus',
        \ 'coc-eslint',
        \ 'coc-diagnostic',
        \ 'coc-stylelintplus',
        \ ]

    let s:utils = [
        \ 'coc-syntax',
        \ 'coc-markdownlint',
        \ 'coc-tabnine',
        \ 'coc-dictionary',
        \ 'coc-lists',
        \ 'coc-git',
        \ 'coc-tag',
        \ 'coc-emoji',
        \ 'coc-github',
        \ 'coc-snippets',
        \ 'coc-calc',
        \ 'coc-emmet',
        \ 'coc-prettier',
        \ 'coc-yank'
        \ ]

    let s:extensions = s:languages + s:frameworks + s:linters + s:utils

    let g:coc_global_extensions = s:extensions

    if exists('g:did_coc_loaded')
        call coc#add_extension()
    end
endif

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
" Remap for rename current word
"nmap <F2> <Plug>(coc-rename)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> ge <Plug>(coc-diagnostic-prev)
nmap <silent> gE <Plug>(coc-diagnostic-next)
nmap <silent> ga :CocAction<cr>

" vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
" Use K to show documentation in preview window

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" }}}

" coc-prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'
" imap <C-j> <Plug>(coc-snippets-expand-jump)

inoremap <silent><expr> <C-j>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
