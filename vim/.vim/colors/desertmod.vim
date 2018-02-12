hi clear
if exists("syntax_on")
	syntax reset
endif

runtime colors/desert.vim

let g:colors_name = "desertmod"

" purge the undesirables (clear the colors I'm not fond of)
hi clear cursorline
hi clear CursorColumn
hi clear LineNr
hi clear Search
hi clear IncSearch

" instill a new world order (recolor the colors I cleared)
hi cursorline gui=NONE guibg=#333333 cterm=NONE ctermbg=232                        
hi CursorColumn guibg=#333333
hi LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=233 gui=NONE guifg=DarkGrey guibg=NONE
hi Search cterm=NONE ctermfg=White ctermbg=DarkBlue gui=NONE guifg=#000000 guibg=#ffffff
hi IncSearch cterm=NONE ctermfg=White ctermbg=Blue
hi NonText  cterm=bold ctermfg=White
hi Comment  ctermfg=38
" As time has worn on, I've started to really hate '5' as an fg color. '13' is
" way easier to see.
hi PreProc  ctermfg=13
hi Title  ctermfg=13
hi Special  ctermfg=6
hi Underlined cterm=underline ctermfg=13
