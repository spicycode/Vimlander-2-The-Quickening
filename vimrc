" Source:
source ~/.vim/vundle.vim
source ~/.vim/global.vim
source ~/.vim/statusbar.vim
source ~/.vim/keybindings.vim
source ~/.vim/plugin_config.vim
source ~/.vim/auto_commands.vim

if filereadable(expand("~/.vim/custom_vimrc"))
  source ~/.vim/custom_vimrc
endif
