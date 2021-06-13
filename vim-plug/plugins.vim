" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	"autocmd VimEnter * PlugInstall
	"autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

" Tools
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
"Plug 'psliwka/vim-smoothie'
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

" Better Syntax Support
Plug 'sheerun/vim-polyglot'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'branch': 'release/0.x' }
"Plug 'dense-analysis/ale'

" Faster code
Plug 'jiangmiao/auto-pairs' " Auto pairs for '(' '[' '{'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdcommenter'
Plug 'Yggdroot/indentLine' "---------------------------- Indent code with v-line
Plug 'majutsushi/tagbar'
Plug 'rhysd/clever-f.vim'
Plug 'mattn/emmet-vim'
Plug 'AndrewRadev/tagalong.vim'

" Frameworks
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
"Plug 'peitalin/vim-jsx-typescript'

" Beauty code
Plug 'ryanoasis/vim-devicons'
Plug 'kaicataldo/material.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'editorconfig/editorconfig-vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Performance
Plug 'neoclide/coc.nvim', { 'branch': 'release' } 
call plug#end()
