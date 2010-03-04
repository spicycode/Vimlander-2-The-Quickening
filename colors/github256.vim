" Vim gitgub256 colorscheme
" Maintainer: Dawid Ciezarkiewicz <dawid.ciezarkiewicz@jabster.pl>
" Credits:
"  * Henry So, Jr. <henryso@panix.com>
"  * Bruno Michel <bmichel@menfin.info>
" Last Change: May, 30, 2008
" Version: 0.1
" Homepage: http://github.com/dpc/github_vim_theme/

" This is a ViM's version of the github color theme for text terminals.
"
" Basically it is work done by Bruno Michel for original github colorscheme
" put in to desert256 colorscheme facilities.
"
" I've corrected the indentation too. Viva la leading tabs!

set background=light
if version > 580
	" no guarantees for version 5.8 and below, but this makes it stop
	" complaining
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif
let g:colors_name="github256"

if has("gui_running") || &t_Co == 88 || &t_Co == 256
	" functions {{{
	" returns an approximate grey index for the given grey level
	fun <SID>grey_number(x)
		if &t_Co == 88
			if a:x < 23
				return 0
			elseif a:x < 69
				return 1
			elseif a:x < 103
				return 2
			elseif a:x < 127
				return 3
			elseif a:x < 150
				return 4
			elseif a:x < 173
				return 5
			elseif a:x < 196
				return 6
			elseif a:x < 219
				return 7
			elseif a:x < 243
				return 8
			else
				return 9
			endif
		else
			if a:x < 14
				return 0
			else
				let l:n = (a:x - 8) / 10
				let l:m = (a:x - 8) % 10
				if l:m < 5
					return l:n
				else
					return l:n + 1
				endif
			endif
		endif
	endfun

	" returns the actual grey level represented by the grey index
	fun <SID>grey_level(n)
		if &t_Co == 88
			if a:n == 0
				return 0
			elseif a:n == 1
				return 46
			elseif a:n == 2
				return 92
			elseif a:n == 3
				return 115
			elseif a:n == 4
				return 139
			elseif a:n == 5
				return 162
			elseif a:n == 6
				return 185
			elseif a:n == 7
				return 208
			elseif a:n == 8
				return 231
			else
				return 255
			endif
		else
			if a:n == 0
				return 0
			else
				return 8 + (a:n * 10)
			endif
		endif
	endfun

	" returns the palette index for the given grey index
	fun <SID>grey_color(n)
		if &t_Co == 88
			if a:n == 0
				return 16
			elseif a:n == 9
				return 79
			else
				return 79 + a:n
			endif
		else
			if a:n == 0
				return 16
			elseif a:n == 25
				return 231
			else
				return 231 + a:n
			endif
		endif
	endfun

	" returns an approximate color index for the given color level
	fun <SID>rgb_number(x)
		if &t_Co == 88
			if a:x < 69
				return 0
			elseif a:x < 172
				return 1
			elseif a:x < 230
				return 2
			else
				return 3
			endif
		else
			if a:x < 75
				return 0
			else
				let l:n = (a:x - 55) / 40
				let l:m = (a:x - 55) % 40
				if l:m < 20
					return l:n
				else
					return l:n + 1
				endif
			endif
		endif
	endfun

	" returns the actual color level for the given color index
	fun <SID>rgb_level(n)
		if &t_Co == 88
			if a:n == 0
				return 0
			elseif a:n == 1
				return 139
			elseif a:n == 2
				return 205
			else
				return 255
			endif
		else
			if a:n == 0
				return 0
			else
				return 55 + (a:n * 40)
			endif
		endif
	endfun

	" returns the palette index for the given R/G/B color indices
	fun <SID>rgb_color(x, y, z)
		if &t_Co == 88
			return 16 + (a:x * 16) + (a:y * 4) + a:z
		else
			return 16 + (a:x * 36) + (a:y * 6) + a:z
		endif
	endfun

	" returns the palette index to approximate the given R/G/B color levels
	fun <SID>color(r, g, b)
		" get the closest grey
		let l:gx = <SID>grey_number(a:r)
		let l:gy = <SID>grey_number(a:g)
		let l:gz = <SID>grey_number(a:b)

		" get the closest color
		let l:x = <SID>rgb_number(a:r)
		let l:y = <SID>rgb_number(a:g)
		let l:z = <SID>rgb_number(a:b)

		if l:gx == l:gy && l:gy == l:gz
			" there are two possibilities
			let l:dgr = <SID>grey_level(l:gx) - a:r
			let l:dgg = <SID>grey_level(l:gy) - a:g
			let l:dgb = <SID>grey_level(l:gz) - a:b
			let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
			let l:dr = <SID>rgb_level(l:gx) - a:r
			let l:dg = <SID>rgb_level(l:gy) - a:g
			let l:db = <SID>rgb_level(l:gz) - a:b
			let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
			if l:dgrey < l:drgb
				" use the grey
				return <SID>grey_color(l:gx)
			else
				" use the color
				return <SID>rgb_color(l:x, l:y, l:z)
			endif
		else
			" only one possibility
			return <SID>rgb_color(l:x, l:y, l:z)
		endif
	endfun

	" returns the palette index to approximate the 'rrggbb' hex string
	fun <SID>rgb(rgb)
		let l:r = ("0x" . strpart(a:rgb, 0, 2)) + 0
		let l:g = ("0x" . strpart(a:rgb, 2, 2)) + 0
		let l:b = ("0x" . strpart(a:rgb, 4, 2)) + 0

		return <SID>color(l:r, l:g, l:b)
	endfun

	" sets the highlighting for the given group
	fun <SID>X(group, fg, bg, attr)
		if a:fg != ""
			exec "hi " . a:group . " guifg=#" . a:fg . " ctermfg=" . <SID>rgb(a:fg)
		endif
		if a:bg != ""
			exec "hi " . a:group . " guibg=#" . a:bg . " ctermbg=" . <SID>rgb(a:bg)
		endif
		if a:attr != ""
			exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
		endif
	endfun
	" }}}

	call <SID>X("Comment", "999988", "", "")
	call <SID>X("SpecialComment", "999988", "", "bold")

	call <SID>X("Constant", "008080", "", "")
	call <SID>X("String", "dd1144", "", "")
	call <SID>X("Character", "dd1144", "", "")
	call <SID>X("Number", "009999", "", "")
	call <SID>X("Boolean", "", "", "bold")
	call <SID>X("Float", "009999", "", "")
	call <SID>X("RubySymbol", "990073", "", "")

	call <SID>X("Identifier", "008080", "", "")
	call <SID>X("Function", "990000", "", "bold")

	call <SID>X("Statement", "000000", "", "bold")
	call <SID>X("Conditional", "000000", "", "bold")
	call <SID>X("Repeat", "000000", "", "bold")
	call <SID>X("Label", "000000", "", "bold")
	call <SID>X("Operator", "000000", "", "bold")
	call <SID>X("Keyword", "000000", "", "bold")
	call <SID>X("Exception", "990000", "", "bold")

	call <SID>X("PreProc", "999999", "", "bold")
	call <SID>X("Include", "999999", "", "bold")
	call <SID>X("Define", "000000", "", "bold")
	call <SID>X("Macro", "999999", "", "bold")
	call <SID>X("PreCondit", "999999", "", "bold")

	call <SID>X("Type", "445588", "", "bold")
	call <SID>X("StorageClass", "000000", "", "bold")
	call <SID>X("Structure", "000000", "", "bold")
	call <SID>X("Typedef", "000000", "", "bold")

	call <SID>X("Special", "dd1144", "", "")
	call <SID>X("SpecialChar", "dd1144", "", "")
	call <SID>X("Tag", "000080", "", "")
	call <SID>X("Delimiter", "dd1144", "", "")
	call <SID>X("Debug", "aa0000", "", "")

	call <SID>X("Underlined", "", "", "underline")

	" TODO: ???
	"hi Ignore               guifg=bg
	call <SID>X("Ignore", "", "", "underline")

	call <SID>X("Error", "a61717", "e3d2d2", "")

	call <SID>X("Todo", "999988", "", "underline")


	call <SID>X("Cursor", "", "000000", "")
	call <SID>X("CursorLine", "", "ffffcc", "none")
	call <SID>X("Directory", "4183c4", "", "")
"	call <SID>X("DiffAdd", "2E2E2E", "9CF9B1", "")
"	call <SID>X("DiffDelete", "2E2E2E", "FFA296", "")
 highlight DiffAdded guifg=#2E2E2E guibg=#9CF9B1
 highlight DiffRemoved guifg=#2E2E2E guibg=#FFA296
	
	call <SID>X("DiffText", "", "666666", "")
	call <SID>X("ErrorMsg", "a61717", "e3d2d2", "bold")
	call <SID>X("VertSplit", "666666", "eaeaea", "")
	call <SID>X("LineNr", "666666", "eaeaea", "")
	call <SID>X("ModeMsg", "", "", "bold")
	call <SID>X("Normal", "000000", "f8f8ff", "")
	call <SID>X("StatusLine", "666666", "eaeaea", "")
	call <SID>X("StatusLineNC", "eaeaea", "666666", "")
	call <SID>X("Visual", "", "ffff86", "")

	" delete functions {{{
	delf <SID>X
	delf <SID>rgb
	delf <SID>color
	delf <SID>rgb_color
	delf <SID>rgb_level
	delf <SID>rgb_number
	delf <SID>grey_color
	delf <SID>grey_level
	delf <SID>grey_number
	" }}}
else

	hi Normal ctermfg=red ctermbg=black
endif
