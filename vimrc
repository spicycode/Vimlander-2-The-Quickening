" Pathogen: Now ~/.vim/bundle will work
call pathogen#runtime_append_all_bundles()

" Source:
source ~/.vim/global.vim
source ~/.vim/functions.vim
source ~/.vim/keybindings.vim
source ~/.vim/plugin_config.vim
source ~/.vim/auto_commands.vim

" COLOR SUPPORT
colorscheme krunktastic 

if filereadable(expand("~/.vim/custom_vimrc"))
  source ~/.vim/custom_vimrc
endif
