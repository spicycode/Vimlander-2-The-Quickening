#/bin/sh

function ideation {
  echo "Spicycode lamented its falling to the like of tm and emacs.  But he did not relent."
}

function collect_plugins {
  echo "The ashes, he collected:" 

  git submodule init &&
  git submodule update
}

function install_vimrc {
echo "And onto them he spoke: 'Rise!'"
  ln -s `pwd`/vimrc $HOME/.vimrc &&
  ln -s `pwd`/gvimrc $HOME/.gvimrc
}

function install_plugins {
  mkdir -p $HOME/.vim
  ln -s `pwd`/bundle $HOME/.vim &&
  ln -s `pwd`/autoload $HOME/.vim &&
  ln -s `pwd`/colors $HOME/.vim 
}

function must_burn_down_first {
  echo "Remanants of the previous vim config was found.  Clean them up first."
  echo "I use: rm -rf ~/.vimrc ~/.gvimrc ~/.vim # BACK UP FIRST!"
  exit 1
}

function all_systems_go {
  echo "... and it arose."
}

ideation && collect_plugins && (install_vimrc || must_burn_down_first) && (install_plugins  || must_burn_down_first) && all_systems_go

