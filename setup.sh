#!/bin/bash
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

cd ~/.vim/bundle/vimproc.vim
make
cd -

ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

vim +BundleInstall +qall
