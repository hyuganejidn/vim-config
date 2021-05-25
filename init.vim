source $HOME/.config/nvim/vim-plug/plugins.vim

for f in split(glob('~/.config/nvim/configs/*.vim'), '\n')
	exe 'source' f
endfor
