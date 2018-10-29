" General options:
syntax on		    " syntax highlighting on
set cursorline      " highlight current line
set number          " turn on line numbers
set nocompatible  	" explicitly get out of vi-compatible mode
set expandtab	    " use spaces, not tabs
set tabstop=4       " tabstops of 4
set shiftwidth=4    " indents of 4
set hlsearch		" highlight search
set autoindent smartindent     " turn on auto/smart indenting
set textwidth=0
set linebreak
let hostname = substitute(system('hostname'), '\n', '', '')
if hostname=="alavanja"
    set breakindent " For identation to visually wrapped lines
endif

" Use space instead of :
nmap <Space> :

" Escape is so far!
imap jk <Esc>

" quit
nmap ,q :q<CR>
nmap ,w :wq!<CR>

" Edit configuration file (this file)
function! Configinit()
    e ~/.vimrc
endfunction
nmap ,c :call Configinit()<CR>
nmap ,s :source ~/.config/nvim/init.vim<CR>

" Turn of highlighting
noremap <C-l> :noh<CR>
set noerrorbells	 " don't make noise

" Colors
colorscheme ron
set background=dark
highlight CursorLine ctermfg=None ctermbg=23 cterm=None
highlight CursorLineNR ctermfg=DarkMagenta ctermbg=23 cterm=bold
highlight LineNR ctermfg=67 ctermbg=23 cterm=bold
autocmd InsertEnter * highlight  CursorLine ctermbg=DarkGray ctermfg=None
autocmd InsertLeave * highlight  CursorLine ctermfg=None ctermbg=23 cterm=None
highlight Comment ctermbg=None ctermfg=LightGray cterm=italic

highlight Tabline ctermfg=LightGray ctermbg=DarkCyan cterm=bold
highlight TablineFill ctermbg=black cterm=bold
highlight TablineSel ctermfg=black ctermbg=Cyan cterm=bold

" No case sensitive search
nmap / /\c

" Share clipboard between vim instances
set clipboard=unnamedplus

if has("gui_running")
    "set guifont=Inconsolata\ Bold\ 15 "Does not play well with Greek
    set guifont=DejaVu\ Sans\ Mono\ \Bold\ 13
    set mousehide		" hide the mouse cursor when typing
    let g:solarized_termcolors=256
    "colorscheme pyte
    colorscheme solarized
    set background=light
endif

"For easier commenting:
vmap i I

"Tabs
nmap <C-Tab> :w<CR>:tabnext<CR>
imap <C-Tab> <Esc>:w<CR>:tabnext<CR>
nmap <C-S-Tab> :w<CR>:tabprevious<CR>
imap <C-S-Tab> <Esc>:w<CR>:tabprevious<CR>

" saving
nmap <C-s> :w!<CR>
nmap <F2> :w!<CR>

imap <C-s> <Esc>:w!<CR>a
imap <F2> <Esc>:w!<CR>a

"Filetypes for builtin viewer; see http://www.drchip.org/astronaut/vim/doc/pi_netrw.txt.html
:let g:netrw_browsex_viewer= "xdg-open"

" Splitting; See http://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
"set splitbelow
"set splitright

"http://vim.wikia.com/wiki/Folding
"nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
"vnoremap <Space> zf

" toggle line numbering
map <F5> :set number!<CR>:set number?<CR>

" Yankring and yanking:
let g:yankring_history_dir='$HOME/.vim/'
nnoremap <silent> <F4> :YRShow<CR> " Open YankRing Buffer 

" Usual copy/paste shortcuts
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+


" Moving between buffers
map <C-Up> <Esc>:w!<CR>:bn<CR>
map <C-Down> <Esc>:w!<CR>:bp<CR> 
imap <C-Up> <Esc>:w!<CR>:bn<CR>
imap <C-Down> <Esc>:w!<CR>:bp<CR> 

"""""""""""""""""""""""""""""" Replace visually selected """"""""""""""""""""""""""""""""
" Escape special characters in a string for exact matching.
" This is useful to copying strings from the file to the search tool
" Based on this - http://peterodding.com/code/vim/profile/autoload/xolox/escape.vim
function! EscapeString (string)
  let string=a:string
  " Escape regex characters
  let string = escape(string, '^$.*\/~[]')
  " Escape the line endings
  let string = substitute(string, '\n', '\\n', 'g')
  return string
endfunction

" Get the current visual block for search and replaces
" This function passed the visual block through a string escape function
" Based on this - http://stackoverflow.com/questions/676600/vim-replace-selected-text/677918#677918
function! GetVisual() range
  " Save the current register and clipboard
  let reg_save = getreg('"')
  let regtype_save = getregtype('"')
  let cb_save = &clipboard
  set clipboard&

  " Put the current visual selection in the " register
  normal! ""gvy
  let selection = getreg('"')

  " Put the saved registers and clipboards back
  call setreg('"', reg_save, regtype_save)
  let &clipboard = cb_save

  "Escape any special characters in the selection
  let escaped_selection = EscapeString(selection)
  return escaped_selection
endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Start the find and replace command across the entire file
vmap <C-r> <Esc>:%s/<c-r>=GetVisual()<cr>/

" Sage highlighting
augroup filetypedetect
  au! BufRead,BufNewFile *.sage,*.spyx,*.pyx setfiletype python
augroup END


""""""""""""""""" Latex Suite """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Greek stuff:
set keymap=greek_utf-8
"set keymap = greek_iso-8859-7
set iminsert=0
set imsearch=-1
" always edit in utf-8:
" set encoding=utf-8
" but be ready to change encoding with a couple of shortcuts:
" map _u :set encoding=utf-8
" map _1 :set encoding=iso-8859-1
" map _7 :set encoding=iso-8859-7
inoremap <c-j> <c-^>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Obsolete: Grading
"function Grade()
"    :%s/\.00//g<CR>
"    set cursorline
"    map <C-z> $r0
"    map <C-o> $r1
"    map <C-t> $r2
"    map <C-i> :s/[0-9-]\+$/\=submatch(0)=='-'?1:submatch(0)+1/  <CR>
"    map / /\c
"endfunction    
"
"command -nargs=0 Grade call Grade()

