#!/bin/sh

mkdir -p ~/.vim/pack/plugins/start
mkdir -p ~/.vim/pack/ui/start

git clone https://github.com/morhetz/gruvbox.git ~/.vim/pack/ui/start/
git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/ui/start/
git clone --branch release https://github.com/neoclide/coc.nvim.git --depth=1 ~/.vim/pack/plugins/start/
git clone https://tpope.io/vim/fugitive.git git ~/.vim/pack/plugins/start/ 
git clone git@github.com:Xuyuanp/nerdtree-git-plugin.git ~/.vim/pack/plugins/start/ 
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/plugins/start/ 
git clone https://github.com/fatih/vim-go.git ~/.vim/pack/plugins/start/
