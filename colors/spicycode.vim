" Vim color scheme
"
" Name:         spicycode.vim

set background=dark
highlight clear

if exists("syntax_on")
   syntax reset
endif

let colors_name = "spicycode"

set t_Co=256
highlight Normal ctermfg=White ctermbg=Black  
highlight Cursor ctermfg=Black ctermbg=Yellow 
highlight Keyword ctermfg=202 
highlight Define ctermfg=202 
highlight Comment ctermfg=98
highlight Type ctermfg=White 
highlight rubySymbol ctermfg=66 
highlight Identifier ctermfg=White 
highlight rubyStringDelimiter ctermfg=82 
highlight rubyInterpolation ctermfg=White 
highlight rubyPseudoVariable ctermfg=66 
highlight Constant ctermfg=228 
highlight Function ctermfg=220 
highlight Include ctermfg=220 
highlight Statement ctermfg=202
highlight String ctermfg=82 
highlight Search ctermbg=White 
highlight Pmenu ctermbg=darkgrey cterm=bold ctermfg=white 
highlight PmenuSel ctermbg=green cterm=bold ctermfg=white 
highlight Visual ctermfg=lightgrey ctermbg=black
highlight StatusLine cterm=NONE,bold ctermbg=darkgray ctermfg=lightgray 
highlight StatusLineNC ctermbg=black ctermfg=darkgray 
highlight WildMenu ctermbg=black ctermfg=white 

highlight ShellTestResultsTime ctermfg=white
highlight ShellTestSpecName cterm=NONE,bold
highlight ShellTestFailure ctermfg=red
highlight ShellTestSuccess ctermfg=green

highlight ShellTextExpectation cterm=bold ctermbg=darkgrey ctermfg=white
highlight ShellTextExpectationDivider ctermbg=darkgrey ctermfg=white

highlight ShellTextSpecFileInfo ctermfg=white ctermbg=red

" make the active status line colours alternate between two settings to give a visual notice of the CursorHold/CursorHoldI events 
if ! exists("s:statuslineflag") 
  let s:statuslineflag = 0 
endif 

highlight DiffAdded ctermfg=Black ctermbg=DarkGreen
highlight DiffRemoved ctermfg=Gray ctermbg=darkred 
" file name of unselected tab 
highlight TabLine cterm=NONE,bold  ctermbg=darkgray ctermfg=white 
" hi TabLineSel           cterm=NONE,bold         ctermbg=white           ctermfg=black 
" fillup and tab-delete "X" at right 
highlight TabLineFill cterm=NONE ctermbg=darkgrey ctermfg=red 

