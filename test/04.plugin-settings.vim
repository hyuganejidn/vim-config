" NERDTree
map <C-t> :NERDTreeToggle<CR>
map <C-b> :NERDTree<CR>
map <C-f> :NERDTreeFind<CR>

let g:NERDTreeCHDirMode = 2
let g:NERDDefaultAlign = 'left'
let g:NERDTreeShowBookmarks = 1
let g:NERDTreePatternMatchHightFullName = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**', 'right': '*/'} } 
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden=1
let g:NERDTreeUseSimpleIndicator=1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:NERDTreeIndicatorMapCustom = {
  \ "Modified"  : "✹",
  \ "Staged"    : "✚",
  \ "Untracked" : "✭",
  \ "Renamed"   : "➜",
  \ "Unmerged"  : "═",
  \ "Deleted"   : "✖",
  \ "Dirty"     : "✗",
  \ "Clean"     : "✔︎",
  \ 'Ignored'   : '☒',
  \ "Unknown"   : "?"
  \ }
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif


" fzf
" let <C->
map <leader>p :Files<CR>
let g:fzf_colors = { 
  \ 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] 
  \ }
let g:fzf_layout = { 'window': {
 \ 'width': 0.9, 
 \ 'height': 0.7,
 \ 'highlight': 'Comment',
 \ 'rounded': v:false
 \ } }
" Vim color highlighting
let g:Hexokinase_highlighters = ['virtual']
let g:Hexokinase_virtualText = '▩'

" coc.vim
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window.

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dracula'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:enable_italic_font = 1
let g:enable_bold_font = 1

let g:blamer_enabled = 1
let g:blamer_delay = 50
let g:blamer_show_in_visual_modes = 0
let g:blamer_show_in_insert_modes = 0
let g:blamer_prefix = ' > '
let g:blamer_relative_time = 1

