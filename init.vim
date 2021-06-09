source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/after/syntax/elm.vim

for f in split(glob('~/.config/nvim/configs/*.vim'), '\n')
	exe 'source' f
endfor

for p in split(glob('~/.config/nvim/vim-plug/configs/*.vim'), '\n')
	exe 'source' p
endfor

"runtime vim-plug/configs/*.vim
