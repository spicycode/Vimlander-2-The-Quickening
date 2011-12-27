" Keybindings:
source ~/.vim/keybindings.gui.vim

" Font: Choose font and enable anti-aliasing
set guifont=Monaco:h14
set antialias

" Maximize: Vert and Horiz by default
set fuoptions=maxvert,maxhorz

" Hide toolbar and menus.
set guioptions-=T
set guioptions-=m

" Scrollbar is always off.
set guioptions-=rL

" Native style tab labels (this ones for you larry)
set guioptions+=e

" Don't flick cursor.
set guicursor=a:blinkon0

colorscheme ir_black

if filereadable(expand("~/.vim/custom_gvimrc"))
  source ~/.vim/custom_gvimrc
endif
