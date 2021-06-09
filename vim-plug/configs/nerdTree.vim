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
autocmd VimEnter * NERDTree
