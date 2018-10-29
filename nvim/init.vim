execute pathogen#infect()
syntax on
filetype plugin indent on

set timeoutlen=500  " (default 1000)
set number          " turn on line numbers
set expandtab	    " use spaces, not tabs
set tabstop=4       " tabstops of 4
set shiftwidth=4    " indents of 4
set textwidth=0
set linebreak
set breakindent     " For identation to visually wrapped lines
set autoindent smartindent     " turn on auto/smart indenting
set nocompatible  	" explicitly get out of vi-compatible mode

" Jumps and shortcuts
inoremap jk <Esc>/<+[0-9a-zA-Z]*+><CR>vf>c
inoremap ( () <++><Esc>hhhhhi
inoremap { {} <++><Esc>hhhhhi
inoremap [ [] <++><Esc>hhhhhi

inoremap (( (
inoremap {{ {
inoremap [[ [

" Use space instead of :
nnoremap <Space> :
nnoremap : :echo "Colon is mapped to space now"<CR>

" Tabs
nnoremap gt :w<CR>gt

" quit
nnoremap ,q :q<CR>
nnoremap ,w :wq!<CR>

" Edit and reload configuration file (this file)
function! Configinit()
    e ~/.config/nvim/init.vim
endfunction
nnoremap ,c :w<CR>:call Configinit()<CR>
nnoremap ,s :w<CR>:source ~/.config/nvim/init.vim<CR>:source ~/.config/nvim/plugin/colours.vim<CR>

" Don't make noise
set noerrorbells	 

" No case sensitive search
nmap / /\c

" Make shortcut
inoremap <C-k> <Esc>:w<CR>:make<CR><CR>
nnoremap <C-k> :w<CR>:make<CR><CR>

" Share clipboard between vim instances
set clipboard=unnamedplus

"Usual copy/paste shortcuts
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

" Moving between buffers
nnoremap <C-Right> <Esc>:w!<CR>:bn<CR>
nnoremap <C-Left> <Esc>:w!<CR>:bp<CR>
inoremap <C-Right> <Esc>:w!<CR>:bn<CR>
inoremap <C-Left> <Esc>:w!<CR>:bp<CR>

" saving
nnoremap <C-s> :w!<CR>
inoremap <C-s> <Esc>:w!<CR>li

" airline
let g:airline_theme= 'luna'

" Ultisnips
let g:UltiSnipsExpandTrigger="fj"
let g:UltiSnipsJumpForwardTrigger="fj"
let g:UltiSnipsJumpBackwardTrigger="<S-fj>"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Yankring and yanking:
let g:yankring_history_dir='$HOME/.vim/'
nnoremap <silent> <F4> :YRShow<CR> " Open YankRing Buffer

" Replace selected; requires nvim/plugin/ReplaceVisual.vim
vnoremap <C-r> <Esc>:%s/<c-r>=GetVisual()<cr>//gc<left><left><left>

" Colours
" File ~/.config/nvim/colours.vim should autoload

" Clear highlight after search
nnoremap <esc> :noh<CR><esc>

" NerdTree
nnoremap <leader>o :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" Automatically close tree after selection
let NERDTreeQuitOnOpen = 1

" Todo: install neomake

" Tagbar
noremap <F8> :TagbarToggle<CR>

" Navigating split windows
" nnoremap <C-J> <C-W><C-J> " used in Ultisnips now
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Resizing windows
map <A-S-Left> <C-W>>
map <A-S-Right> <C-W><
map <A-S-Up> <C-W>+
map <A-S-Down> <C-W>-

" Terminal and navigating
nnoremap <leader>t :split v<CR>:terminal<CR>17<C-w><C--><C-w><C-r>A
"tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
tnoremap <C-h> <C-\><C-N><C-w>h

" Sage highlighting
augroup filetypedetect
  au! BufRead,BufNewFile *.sage,*.spyx,*.pyx setfiletype python
augroup END

" Greek
set keymap=greek_utf-8
"set keymap = greek_iso-8859-7
set iminsert=0
set imsearch=-1
" always edit in utf-8:
" set encoding=utf-8
" but be ready to change encoding with a couple of shortcuts:
" map _u :set encoding=utf-8
"


