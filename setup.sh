#!/bin/bash
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

vim +BundleInstall +qall
cd bundle/vimproc.vim/ && make && cd -
echo "If YouCompleteMe fails to work, you likely need to 'brew unlink python'"
cd bundle/YouCompleteMe/ && ./install.sh && cd -
