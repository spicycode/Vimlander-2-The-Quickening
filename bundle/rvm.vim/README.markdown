# rvm.vim

Combining the [vim text editor](http://www.vim.org) the [ruby version manager](http://rvm.beginrescueend.com/) for good of mandkind.

## Installing

Copy rvm.vim into your ~/.vim/plugin directory:

    curl http://github.com/csexton/rvm.vim/raw/master/plugin/rvm.vim > ~/.vim/plugin/rvm.vim

## Status line

To add the active rvm ruby to the status line:

    set statusline+=%{Rvm#statusline()}

Or you could get fancy and do something like this:

    set statusline=[%n]\ %<%.99f\ %h%w%m%r%y%{exists('g:loaded_rvm')?Rvm#statusline():''}%=%-16(\ %l,%c-%v\ %)%P

Having the `exists` check will degrade gracefully if you move your .vimrc around to computers that may not have the rvm.vim plugin intalled.


