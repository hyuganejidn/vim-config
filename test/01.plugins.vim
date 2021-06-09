call plug#begin('~/.config/nvim/bundle')

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'tpope/vim-fireplace', {'for': 'clojure'}
Plug 'junegunn/vim-plug'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'branch': 'release/0.x' }
Plug 'pangloss/vim-javascript'
Plug 'editorconfig/editorconfig-vim'
Plug 'kaicataldo/material.vim'
Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ryanoasis/vim-devicons'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
" Plug 'majutsushi/tagbar'
Plug 'APZelos/blamer.nvim'
call plug#end()
