" Temporary keybinding to display syntax group of cursor position
" map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
" \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
" \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
" Vim color scheme
"
" Name:         spicycodegui.vim

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "spicycodegui"

highlight Normal guifg=White   guibg=Black
highlight Cursor guifg=Black   guibg=Yellow
highlight Keyword guifg=#FF6600
highlight Define guifg=#FF6600
highlight Comment guifg=#a6a6a6
highlight Type guifg=#e6e6e6 gui=NONE
highlight Identifier guifg=#ffee98 gui=NONE
highlight Constant guifg=#FFEE98
highlight Function guifg=#e6e6e6 gui=NONE
highlight Include guifg=#ffe665 gui=NONE
highlight Statement guifg=#FF6600 gui=NONE
highlight String guifg=#b8f291
highlight Search guibg=#343434 guifg=#ffffff

highlight rubySymbol guifg=#ffef9b gui=NONE
highlight rubyConstant guifg=#FFEE98 gui=NONE
highlight rubyRailsUserClass guifg=#ffcc00 gui=NONE
highlight rubyStringDelimiter guifg=#b8f291
highlight rubyInterpolation guifg=White
highlight rubyPseudoVariable guifg=#339999
highlight rubyRailsARMethod guifg=#e6e6e6

highlight Pmenu guibg=#1A1A1A guifg=#808080 
highlight PmenuSel guibg=#343434 guifg=white 

highlight Visual guifg=NONE guibg=#343434

highlight StatusLine gui=NONE guibg=#1A1A1A guifg=white 
highlight StatusLineNC gui=NONE guibg=#1A1A1A guifg=#808080

" Line Numbers
highlight LineNr gui=NONE guibg=#1A1A1A guifg=#909090

" Vertical Split Line
highlight VertSplit gui=NONE guibg=#1A1A1A guifg=#595959


highlight WildMenu gui=NONE,bold guibg=green guifg=white 

highlight DiffAdded guifg=Black guibg=#60d412
highlight DiffRemoved guifg=Gray guibg=#dc133f 

highlight TabLine gui=NONE guibg=#1A1A1A guifg=#808080 
highlight TabLineSel gui=NONE guibg=#343434 guifg=white 
highlight TabLineFill gui=NONE guibg=#1A1A1A

highlight Folded guibg=#2A2A2A guifg=#808080 
highlight FoldColumn guibg=#2A2A2A guifg=#808080 
