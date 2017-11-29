set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'		" simple set brackets and so on
Plugin 'scrooloose/nerdtree'	" for file manaeging
Plugin 'bling/vim-airline'		" Powerline row for a simpler overview

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

map <C-n> :NERDTreeToggle<CR>
inoremap jj <ESC>
nnoremap <space> za 			" space open/closes folds

syntax enable           		" enable syntax processing
set tabstop=4       			" number of visual spaces per TAB
set number              		" show line numbers
set cursorline          		" highlight current line
set foldenable          		" enable folding
set foldnestmax=10      		" 10 nested fold max
set textwidth=80				" convention linelength

au BufNewFile,BufRead *.py
	\ set smartindent
