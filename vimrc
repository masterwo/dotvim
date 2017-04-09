" Modelines {{{ 
set modeline " modeline must be enabled for this to work
set modelines=20
" Enables folding in my vimrc, helps me keep organized
" vim: foldmethod=marker:
" vim: tabstop=2
" }}}
" Compatibility {{{
if &compatible
  set nocompatible " Be improved
endif
"}}}
" Packages {{{
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
call dein#begin('~/.cache/dein')

call dein#add('shougo/dein.vim')
call dein#add('nanotech/jellybeans.vim')
call dein#add('tomasr/molokai')
call dein#add('jpalardy/vim-slime')
call dein#add('scrooloose/nerdtree')
call dein#add('tpope/vim-surround')
call dein#add('vimwiki/vimwiki')

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
set tabstop=2
"set encoding=utf8
" }}}
" Environment-variables {{{
set path=,,**,$HOME

set lcs=tab:>-,trail:-,eol:<,nbsp:%,extends:>,precedes:<

" Use spaces instead of tab.
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab

set nowrap

set cursorline

let g:slime_target = "tmux"
let g:slime_paste_file = "~/.slime_paste"

let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '-'

let g:vimwiki_list = [{'path': '~/vimwiki/',
                    \ 'syntax': 'markdown', 'ext': '.md'}]

" }}}
" Abbrevations {{{
cabbrev help tab help
" }}}
" Keyboard-mappings {{{
let mapleader = ','

nmap <leader>ft :set ft=

nmap <leader>ev :vertical belowright new %:p:h/scratch.txt<CR>
nmap <leader>eV :vertical new %:p:h/scratch.txt<CR>
nmap <leader>es :belowright new %:p:h/scratch.txt<CR>
nmap <leader>eS :new %:p:h/scratch.txt<CR>

vmap <leader>ev y:vertical belowright new %:p:h/scratch.txt<CR>p
vmap <leader>eV y:vertical new %:p:h/scratch.txt<CR>p
vmap <leader>es y:belowright new %:p:h/scratch.txt<CR>p
vmap <leader>eS y:new %:p:h/scratch.txt<CR>p

nmap <leader>ee :edit $MYVIMRC<CR>

nmap <leader>F :find 
nmap <leader>fv :vertical belowright sfind 
nmap <leader>fV :vertical sfind 
nmap <leader>fs :belowright sfind 
nmap <leader>fS :sfind 

nmap <leader>bo :buffer 
nmap <leader>bv :vert belowright sb 
nmap <leader>bV :vert sb 
nmap <leader>bs :belowright sb 
nmap <leader>bS :sb 

nmap <leader>tb :tab ball<CR>
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

nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>

vmap < <gv
vmap > >gv

noremap <F3> :set list!<cr>

" The word under the cursor gets surrounded with quotes
noremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>

map <C-n> :NERDTreeToggle<CR>
" }}}
