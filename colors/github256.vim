" Vim color file
" Maintainer: Ricardo Valeriano <ricardo.valeriano@gmail.com>
"     Based on the work by: Bruno Michel <bmichel@menfin.info>
" Last Change: Mar, 01, 2012
" Version: 0.2
" Homepage: http://github.com/ricardovaleriano/vim-github-theme

" This is a ViM's version of the github color theme.

set background=light
highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "github256"
set t_Co=256

highlight Comment              guifg=#999988 ctermfg=102 gui=italic

highlight Constant             guifg=#008080 ctermfg=30
    highlight String           guifg=#dd1144 ctermfg=161
    highlight Character        guifg=#dd1144 ctermfg=161
    highlight Number           guifg=#009999 ctermfg=30
    highlight Boolean          gui=bold cterm=bold
    highlight Float            guifg=#009999 ctermfg=30
    highlight RubySymbol       guifg=#990073 ctermfg=90

highlight Identifier           guifg=#008080 ctermfg=30
    highlight Function         guifg=#990000 ctermfg=88 gui=bold cterm=bold

highlight Statement            guifg=#000000 ctermfg=16 gui=bold cterm=bold
    highlight Conditional      guifg=#000000 ctermfg=16 gui=bold cterm=bold
    highlight Repeat           guifg=#000000 ctermfg=16 gui=bold cterm=bold
    highlight Label            guifg=#000000 ctermfg=16 gui=bold cterm=bold
    highlight Operator         guifg=#000000 ctermfg=16 gui=bold cterm=bold
    highlight Keyword          guifg=#000000 ctermfg=16 gui=bold cterm=bold
    highlight Exception        guifg=#990000 ctermfg=88 gui=bold cterm=bold

highlight PreProc              guifg=#999999 ctermfg=102 gui=bold cterm=bold
    highlight Include          guifg=#999999 ctermfg=102 gui=bold cterm=bold
    highlight Define           guifg=#000000 ctermfg=16 gui=bold cterm=bold
    highlight Macro            guifg=#999999 ctermfg=102 gui=bold cterm=bold
    highlight PreCondit        guifg=#999999 ctermfg=102 gui=bold cterm=bold

highlight Type                 guifg=#445588 ctermfg=60 gui=bold cterm=bold
    highlight StorageClass     guifg=#000000 ctermfg=16 gui=bold cterm=bold
    highlight Structure        guifg=#000000 ctermfg=16 gui=bold cterm=bold
    highlight Typedef          guifg=#000000 ctermfg=16 gui=bold cterm=bold

highlight Special              guifg=#dd1144 ctermfg=161
    highlight SpecialChar      guifg=#dd1144 ctermfg=161
    highlight Tag              guifg=#000080 ctermfg=18
    highlight Delimiter        guifg=#dd1144 ctermfg=161
    highlight SpecialComment   guifg=#999999 ctermfg=102 gui=bold,italic cterm=bold,italic
    highlight Debug            guifg=#aa0000 ctermfg=124

highlight Underlined           gui=underline cterm=underline

highlight Ignore               guifg=bg

highlight Error                guifg=#a61717 ctermfg=124 guibg=#e3d2d2 ctermbg=188

highlight Todo                 guifg=#999988 ctermfg=102 gui=italic cterm=italic

highlight Cursor               guifg=NONE ctermfg=NONE guibg=#ff9900 ctermbg=227
highlight CursorLine           guifg=NONE ctermfg=NONE guibg=#ffffcc ctermbg=230
highlight Directory            guifg=#4183c4 ctermfg=68
highlight DiffAdd              guifg=#000000 ctermfg=16 guibg=#ddffdd ctermbg=194
highlight DiffDelete           guifg=#000000 ctermfg=16 guibg=#ffdddd ctermbg=224
highlight DiffText             guibg=#666666 ctermbg=59
highlight ErrorMsg             guifg=#a61717 ctermfg=124 guibg=#e3d2d2 ctermbg=188 gui=bold cterm=bold
highlight VertSplit            guibg=#000000 guifg=#f8f8ff 
highlight LineNr               guifg=#666666 ctermfg=59 guibg=#eaeaea ctermbg=188
highlight ModeMsg              gui=bold cterm=bold
highlight Normal               guifg=#000000 ctermfg=16 guibg=#f8f8ff ctermbg=231
highlight Pmenu                guibg=#eaeaea guifg=#808088
highlight StatusLine           guifg=#666666 ctermfg=59 guibg=#eaeaea ctermbg=188
highlight Visual               guifg=NONE ctermfg=NONE guibg=#ffffcc ctermbg=230

highlight TabLine gui=NONE guibg=#eaeaea guifg=#808080 
highlight TabLineSel gui=bold guibg=#f8f8ff guifg=#000000 
highlight TabLineFill gui=NONE guibg=#eaeaea
