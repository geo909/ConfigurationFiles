" Colors
colorscheme ron
set background=dark
set cursorline
highlight CursorLine ctermfg=None ctermbg=23 cterm=None
highlight LineNR ctermfg=67 ctermbg=23 cterm=bold
highlight CursorLineNR ctermfg=DarkMagenta ctermbg=23 cterm=bold
autocmd InsertEnter * highlight  CursorLine ctermbg=DarkGray ctermfg=None
autocmd InsertLeave * highlight  CursorLine ctermfg=None ctermbg=23 cterm=None
highlight Comment ctermbg=None ctermfg=LightGray cterm=italic
highlight Tabline ctermfg=black ctermbg=DarkCyan cterm=bold
highlight TablineFill ctermbg=black cterm=bold
highlight TablineSel ctermfg=black ctermbg=Cyan cterm=bold
