" Modelines {{{ 
set modeline " modeline must be enabled for this to work
set modelines=20
" Enables folding in my vimrc, helps me keep organized
" vim: foldmethod=marker:
" vim: tabstop=2
" }}}
" Neobundle {{{
				" Note: Skip initialization for vim-tiny or vim-small.
				if !1 | finish | endif

				if has('vim_starting')
				if &compatible
				set nocompatible               " Be iMproved
				endif

				" Required:
				set runtimepath+=~/.vim/bundle/neobundle.vim/
				endif

				" Required:
				call neobundle#begin(expand('~/.vim/bundle/'))

				" Let NeoBundle manage NeoBundle
				" Required:
				NeoBundleFetch 'Shougo/neobundle.vim'

				" My Bundles here:
				" Refer to |:NeoBundle-examples|.
				" Note: You don't set neobundle setting in .gvimrc!

				call neobundle#end()

				" Required:
				filetype plugin indent on

				" If there are uninstalled bundles found on startup,
				" this will conveniently prompt you to install them.
				NeoBundleCheck
" }}}
" Plugins {{{
	NeoBundle 'altercation/vim-colors-solarized'
	NeoBundle 'jpalardy/vim-slime'
	NeoBundle 'kien/ctrlp.vim'
	NeoBundle 'nanotech/jellybeans.vim'
	NeoBundle 'scrooloose/syntastic'
	NeoBundle 'valloric/youCompleteMe'
	NeoBundle 'vim-scripts/mru.vim'
"}}}
" Plugin settings {{{
" Slime settings {{{
	let g:slime_target = "tmux"
	"let g:slime_python_ipython = 1
" }}}
" Syntastic settings {{{
	let g:syntastic_python_python_use_codec=1
	let g:syntastic_javascript_checkers = ['gjslint']
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*

	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0
" }}}
" }}}
" Colorscheme {{{ 
	set background=dark
	colorscheme solarized
" }}}
" Mappings {{{
	let mapleader=","
	set nu
	map <c-c> <esc> " Make sure c-c is interpreted as esc
	map <leader>d :q<cr>
	map <leader>D :wq<cr>
	map <leader>v :vsp<cr><c-w>l
	map <leader>s :sp<cr><c-w>j
	map <c-l> <c-w>l
	map <c-h> <c-w>h
	map <c-j> <c-w>j
	map <c-k> <c-w>k
	noremap <leader>ev :vsplit $MYVIMRC<cr>

	" The word under the cursor gets surrounded with quotes
	noremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
	vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>
" }}}