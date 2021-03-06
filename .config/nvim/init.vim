call plug#begin('~/.local/share/nvim/plugged')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          utility                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'scrooloose/nerdtree'    " for file manaeging
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips' 		" snippets engin for closely everthing
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"
    let g:UltiSnipsEditSplit="vertical"
Plug 'ntpeters/vim-better-whitespace'
    let g:strip_whitespace_on_save = 1
    let g:better_whitespace_enabled = 1
    let g:strip_whitelines_at_eof = 1
    let g:show_spaces_that_precede_tabs = 1
    let g:better_whitespace_verbosity = 0
    let g:strip_whitespace_confirm = 0
Plug 'tpope/vim-dispatch'
    let g:dispatch_maps = 1
Plug 'chiel92/vim-autoformat'
Plug 'itchyny/calendar.vim'
    let g:calendar_google_calendar = 1
Plug 'christoomey/vim-tmux-navigator'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        operability                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'shougo/deoplete.nvim'	" autocompletion while working
    let g:deoplete#enable_at_startup = 1
Plug 'zchee/deoplete-jedi'
Plug '907th/vim-auto-save'
    let g:auto_save = 1
    let g:auto_save_events = ["InsertLeave", "TextChanged"]
    let g:auto_save_silent = 1
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'dense-analysis/ale'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        appearance                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
    let g:airline#extensions#ale#enabled = 1
Plug 'vim-airline/vim-airline-themes'
    let g:airline_theme='solarized'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                     language specific                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'sirtaj/vim-openscad'
Plug 'lervag/vimtex'          " make tex document compiled while writing
    " let g:vimtex_compiler_progname = 'nvr'
    " let g:vimtex_view_mode='zathura'
    " let g:vimtex_view_method='zathura'
    " let g:vimtex_viewer_general='zathura'
    let g:vimtex_compiler_latexmk = {'build_dir': 'build'}
    let g:vimtex_fold_enabled = 0
    let g:tex_flavor = 'latex'
    let g:vimtex_quickfix_mode = 0
    let g:vimtex_complete_close_braces = 1
    let g:vimtex_complete_recursive_bib = 1
    let g:vimtex_main= 'main.tex'

call plug#end()

" enable syntax processing
syntax enable

set background=light
colorscheme solarized

" make ESC reachable for fingers
inoremap jj <ESC>
inoremap <expr><C-h>  deoplete#undo_completion()
inoremap <expr><C-l>  deoplete#complete_common_string()
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ deoplete#manual_complete()
    function! s:check_back_space() abort "{{{
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~ '\s'
    endfunction"}}}

" format file
noremap <C-f> :Autoformat<CR>
" space open/closes folds
nnoremap <space> za


" move vim splits
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" escape vim terminal
tnoremap <Esc> <C-\><C-n>


map <C-n> :NERDTreeToggle<CR>
map <C-s> :set spell<CR>


" make tab great again
set tabstop=4
set shiftwidth=4
set expandtab
" redraw only when we need to.
set lazyredraw
" highlight current line and show linenumbers
set number relativenumber
set cursorline
" enable folding
set foldenable
set foldmethod=indent
" convention linelength
set textwidth=80
" spell settings
set spelllang=de_de
set spellfile=$HOME/.config/nvim/spell/de.utf-8.add
set spellfile+=$HOME/.config/nvim/spell/physics.add
" more natural split opening
set splitbelow
set splitright
" better markdown readableity
set conceallevel=2
" better search with lower/capitel letters
set ignorecase
set smartcase

" Some settings for deoplete which is a completation software.
let g:python3_host_prog = '/usr/bin/python3'
let g:python2_host_prog = '/usr/bin/python2'

packadd termdebug
