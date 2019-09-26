call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-surround'     " simple set brackets and so on
Plug 'scrooloose/nerdtree'    " for file manaeging
Plug 'bling/vim-airline'      " Powerline row for a simpler overview
Plug '907th/vim-auto-save'
    let g:auto_save = 1
    let g:auto_save_events = ["InsertLeave", "TextChanged"]
    let g:auto_save_silent = 1
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
Plug 'shougo/deoplete.nvim'	" autocompletion while working
    let g:deoplete#enable_at_startup = 1
Plug 'zchee/deoplete-jedi'
" Plugin 'ervandew/supertab'
"     let g:SuperTabDefaultCompletionType = "<c-n>" 		" Invert Tab order
Plug 'tpope/vim-commentary'   " automatically comment stuff out
Plug 'SirVer/ultisnips' 		" snippets engin for closely everthing
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"
    let g:UltiSnipsEditSplit="vertical"
Plug 'honza/vim-snippets' 	" snippets dict
" Plugin 'plasticboy/vim-markdown'
"     let g:tex_conceal = ""
"     let g:vim_markdown_math = 1
"     let g:vim_markdown_autowrite = 1
" Plugin 'vimwiki/vimwiki'
Plug 'ntpeters/vim-better-whitespace'
    let g:strip_whitespace_on_save = 1
    let g:better_whitespace_enabled = 1
    let g:strip_whitelines_at_eof = 1
    let g:show_spaces_that_precede_tabs = 1
    let g:better_whitespace_verbosity = 0
    let g:strip_whitespace_confirm = 0
Plug 'sirtaj/vim-openscad'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-dispatch'
    let g:dispatch_maps = 1

Plug 'chiel92/vim-autoformat'

" themes
Plug 'vim-airline/vim-airline-themes'
    let g:airline_theme='solarized'

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
" remove highlighted text
nnoremap <silent> <C-r> :nohl<CR>
" move vim splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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


" hi CursorLineNr
"     \ ctermfg=white
" 	\ cterm=bold
" hi SpellBad
" 	\ ctermfg=red
" 	\ cterm=bold
" 	\ ctermbg=None
" hi Pmenu
"     \ ctermbg=8
"     \ guibg=#606060
" hi Folded
"     \ ctermfg=darkgrey
"     \ ctermbg=None
"     \ cterm=bold
" hi Comment
"     \ ctermfg=darkgrey
"     \ ctermbg=None
"     \ cterm=italic

" Some settings for deoplete which is a completation software.
let g:python3_host_prog = '/usr/bin/python3' "add python path for nvim
" let g:python2_host_prog = '/usr/bin/python2' "add python path for nvim
