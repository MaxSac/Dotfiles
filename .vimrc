set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'     " simple set brackets and so on
Plugin 'scrooloose/nerdtree'    " for file manaeging
Plugin 'bling/vim-airline'      " Powerline row for a simpler overview
Plugin 'lervag/vimtex'          " make tex document compiled while writing
Plugin 'shougo/deoplete.nvim'	" autocompletion while working
Plugin 'zchee/deoplete-jedi'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-commentary'   " automatically comment stuff out

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

map <C-n> :NERDTreeToggle<CR>
inoremap jj <ESC>
nnoremap <space> za             " space open/closes folds

syntax enable                   " enable syntax processing
set tabstop=4                   " number of visual spaces per TAB
set number                      " show line numbers
set cursorline                  " highlight current line
set foldenable                  " enable folding
set foldnestmax=10              " 10 nested fold max
set textwidth=80                " convention linelength

" Some settings for deoplete which is a completation software.
call deoplete#enable() 								
let g:python3_host_prog = '/usr/bin/python3' "add python path for nvim

au BufNewFile,BufRead *.tex set ft=tex
autocmd Filetype tex
\	if !exists('g:deoplete#omni#input_patterns') 			|
\   	let g:deoplete#omni#input_patterns = {} 			|
\ 	endif 													|
\    	let g:deoplete#omni#input_patterns.tex = g:vimtex#re#deoplete 			|
\ 	let g:vimtex_fold_enabled = 1 							|
let g:vimtex_compiler_latexmk = {'build_dir': 'build'} 	

hi Pmenu ctermbg=8 guibg=#606060 					" changing default color

let g:SuperTabDefaultCompletionType = "<c-n>" 		" Invert Tab order
