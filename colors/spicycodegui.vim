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
  highlight Comment guifg=#9933CC
  highlight Type guifg=White gui=NONE
  highlight Identifier guifg=White gui=NONE

  highlight rubySymbol guifg=#339999 gui=NONE
  highlight rubyStringDelimiter guifg=#66FF00
  highlight rubyInterpolation guifg=White
  highlight rubyPseudoVariable guifg=#339999

  highlight Constant guifg=#FFEE98
  highlight Function guifg=#FFCC00 gui=NONE
  highlight Include guifg=#FFCC00 gui=NONE
  highlight Statement guifg=#FF6600 gui=NONE
  highlight String guifg=#66FF00

  highlight Search guibg=#343434

  highlight Pmenu guibg=#1A1A1A guifg=#808080 
  highlight PmenuSel guibg=#343434 guifg=white 

  highlight Visual guifg=NONE guibg=#343434

  highlight StatusLine gui=NONE guibg=#1A1A1A guifg=white 
  highlight StatusLineNC gui=NONE guibg=#1A1A1A guifg=#808080

  highlight WildMenu gui=NONE,bold guibg=green guifg=white 

  highlight DiffAdded guifg=Black guibg=DarkGreen
  highlight DiffRemoved guifg=Gray guibg=darkred 

  highlight TabLine gui=NONE guibg=#1A1A1A guifg=#808080 
  highlight TabLineSel gui=NONE guibg=#343434 guifg=white 
  highlight TabLineFill gui=NONE guibg=#1A1A1A

	highlight Folded guibg=#2A2A2A guifg=#808080 
  highlight FoldColumn guibg=#2A2A2A guifg=#808080 

  highlight ShellTestResultsTime guifg=white
  highlight ShellTestSpecName gui=NONE,bold
  highlight ShellTestFailure guifg=red
  highlight ShellTestSuccess guifg=green
  highlight ShellExpectation gui=bold guibg=black guifg=lightblue
  highlight ShellTextExpectationDivider guifg=lightblue 
  highlight ShellTextSpecFileInfo guifg=black guibg=white
