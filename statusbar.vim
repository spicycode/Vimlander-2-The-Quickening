" StatusBar:

" Always show status bar
set laststatus=2

" Inspired by StatusLineHighlight by Ingo Karkat
function! s:StatusLine(new_stl, type, current)
  let current = (a:current ? "" : "NC")
  let type = a:type
  let new_stl = a:new_stl

  " Prepare current buffer specific text
  " Syntax: <CUR> ... </CUR>
  let new_stl = substitute(new_stl, '<CUR>\(.\{-,}\)</CUR>', (a:current ? '\1' : ''), 'g')

  " Prepare statusline colors
  " Syntax: #[ ... ]
  let new_stl = substitute(new_stl, '#\[\(\w\+\)\]', '%#StatusLine'.type.'\1'.current.'#', 'g')

  " Prepare statusline arrows
  " Syntax: [>] [>>] [<] [<<]
  let new_stl = substitute(new_stl, '\[>\]',  '/', 'g')
  let new_stl = substitute(new_stl, '\[>>\]', '/ ', 'g')
  let new_stl = substitute(new_stl, '\[<\]',  '\', 'g')
  let new_stl = substitute(new_stl, '\[<<\]', '\', 'g')

  if &l:statusline ==# new_stl
    " Statusline already set, nothing to do
    return
  endif

  if empty(&l:statusline)
    " No statusline is set, use my_stl
    let &l:statusline = new_stl
  else
    " Check if a custom statusline is set
    let plain_stl = substitute(&l:statusline, '%#StatusLine\w\+#', '', 'g')

    if &l:statusline ==# plain_stl
      " A custom statusline is set, don't modify
      return
    endif

    " No custom statusline is set, use my_stl
    let &l:statusline = new_stl
  endif
endfunction

" Default statusline 
let g:default_stl  = ""
let g:default_stl .= "<CUR>#[Mode] %{&paste ? 'PASTE [>] ' : ''}%{mode()} #[ModeS][>>]</CUR>"
let g:default_stl .= "#[Branch] %(%{substitute(fugitive#statusline(), 'GIT(\\([a-z0-9\\-_\\./:]\\+\\))', '\\1', 'gi')}#[BranchS] [>] %)" " Git branch
let g:default_stl .= "#[FileName]%t " " File name
let g:default_stl .= "<CUR>#[Error]%(%{substitute(SyntasticStatuslineFlag(), '\\[Syntax: line:\\(\\d\\+\\) \\((\\(\\d\\+\\))\\)\\?\\]', '[>][>][>] SYNTAX đ \\1 \\2 [>][>][>]', 'i')} %)</CUR>" " Syntastic error flag
let g:default_stl .= "#[ModFlag]%(%M %)" " Modified flag
let g:default_stl .= "#[BufFlag]%(%H%W %)" " HLP,PRV flags
let g:default_stl .= "#[FileNameS][>>]" " Separator
let g:default_stl .= "#[FunctionName] " " Padding/HL group
let g:default_stl .= "%<" " Truncate right
let g:default_stl .= "<CUR>%(%{cfi#format('%s', '')} %)</CUR>" " Function name
let g:default_stl .= "%= " " Right align
let g:default_stl .= "<CUR>#[FileFormat]%{&fileformat} </CUR>" " File format
let g:default_stl .= "<CUR>#[FileEncoding]%{(&fenc == '' ? &enc : &fenc)} </CUR>" " File encoding
let g:default_stl .= "<CUR>#[Separator][<] #[FileType]%{strlen(&ft) ? &ft : 'n/a'} </CUR>" " File type
let g:default_stl .= "#[LinePercentS][<<]#[LinePercent] %p%% " " Line/column/virtual column, Line percentage
let g:default_stl .= "#[LineNumberS][<<]#[LineNumber] %l#[LineColumn]:%c%V " " Line/column/virtual column, Line percentage
let g:default_stl .= "%{exists('g:synid') && g:synid ? '[<] '.synIDattr(synID(line('.'), col('.'), 1), 'name').' ' : ''}" " Current syntax group

" Statusline highlighting 
augroup StatusLineHighlight
  autocmd!
  au BufEnter,BufWinEnter,WinEnter,CmdwinEnter,CursorHold,BufWritePost,InsertLeave * call <SID>StatusLine((exists('b:stl') ? b:stl : g:default_stl), 'Normal', 1)
  au BufLeave,BufWinLeave,WinLeave,CmdwinLeave * call <SID>StatusLine((exists('b:stl') ? b:stl : g:default_stl), 'Normal', 0)
  au InsertEnter,CursorHoldI * call <SID>StatusLine((exists('b:stl') ? b:stl : g:default_stl), 'Insert', 1)
augroup END

let &t_SI="]12;\#89b6e2\x7"
let &t_EI="]12;\#dd4010\x7"

au VimLeave * silent !echo -ne "]12;\#dd4010\x7"
