" Modelines {{{ 
set modeline " modeline must be enabled for this to work
set modelines=20
" Enables folding in my vimrc, helps me keep organized
" vim: foldmethod=marker:
" vim: tabstop=2
" }}}
" Packages {{{
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
call dein#begin('~/.cache/dein')

call dein#add('shougo/dein.vim')
call dein#add('nanotech/jellybeans.vim')
call dein#add('tomasr/molokai')
call dein#add('jpalardy/vim-slime')
call dein#add('scrooloose/nerdtree')
call dein#add('tpope/vim-surround')

call dein#end()

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif
" }}}
" Appearance {{{
colorscheme jellybeans
set number
set tabstop=4
"set encoding=utf8
" }}}
" Environment-variables {{{
if &compatible
  set nocompatible " Be improved
endif

set path=,,**,$HOME

set cursorline

let g:slime_target = "tmux"
let g:slime_paste_file = "~/.slime_paste"

let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = 'V'
" }}}
" Abbrevations {{{
cabbrev help tab help
" }}}
" Keyboard-mappings {{{
let mapleader = ','

nmap <leader>f :find 
nmap <leader>F :tabfind 
nmap <leader>e :edit $MYVIMRC<CR>
nmap <leader>E :tabedit $MYVIMRC<CR>
nmap <leader>b :buffer 
nmap <leader>B :tab ball<CR>
nmap <leader>r :source $MYVIMRC<CR>
nmap <leader>R :source %<CR>
nmap <leader>h :help 

nmap <leader>d :q<cr>
nmap <leader>D :wq<cr>
nmap <leader>v :vsp<cr><c-w>l
nmap <leader>s :sp<cr><c-w>j
nmap <c-l> <c-w>l
nmap <c-h> <c-w>h
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k

vmap < <gv
vmap > >gv

" The word under the cursor gets surrounded with quotes
noremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>

map <C-n> :NERDTreeToggle<CR>
" }}}
