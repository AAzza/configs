set nocompatible
set nobackup
set noerrorbells
set visualbell t_vb=
set t_co=256

" install NeoBundle
" mkdir -p ~/.vim/bundle
" git clone https://github.com/shougo/NeoBundle.vim  ~/.vim/bundle/NeoBundle.vim

set runtimepath+=~/.vim/bundle/NeoBundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'shougo/NeoBundle.vim'
" NeoBundle 'Shougo/vimproc.vim', {
"           \ 'build' : {
"           \     'windows' : 'make -f make_mingw32.mak',
"           \     'cygwin' : 'make -f make_cygwin.mak',
"           \     'mac' : 'make -f make_mac.mak',
"           \     'unix' : 'make -f make_unix.mak',
"           \    },
"           \ }
" consider 'tpope/vim-commentary'
NeoBundle 'tComment'
NeoBundle 'tpope/vim-surround'
" NeoBundle 'snipmate'
NeoBundle 'shougo/vinarise.vim'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'gnuplot.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'timcharper/textile.vim'
NeoBundle 'plasticboy/vim-markdown'

NeoBundle 'glench/vim-jinja2-syntax'
let g:pyflakes_use_quickfix = 0

" themes
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'nielsmadan/harlequin'
NeoBundle 'mayansmoke'
NeoBundle 'chriskempson/vim-tomorrow-theme'
NeoBundle 'tomasr/molokai'
NeoBundle 'summerfruit256.vim'
colorscheme desert
set background=dark
if has("gui_running")
    colorscheme summerfruit256
endif

" ------------------------------------------------------------------

set guioptions-=m
set guioptions-=t
set wildmenu
set wildignore=data/*,*.pyc,*.o,*.jpg,*.jpeg,*.mako.py,*.gif,*.png,*.pngc,*.sassc,*.scssc,*.pdf
set title

" search
set incsearch
set smartcase
set ignorecase
set hlsearch
set grepprg=ack
set showmatch

" system clipboard
set clipboard=unnamedplus

" encoding
set encoding=utf-8
set termencoding=utf-8

" tabs
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent

set colorcolumn=81
set ttyfast
set relativenumber
set number
set showcmd
set modeline
set nobackup
set hidden
set guifont=inconsolata\ 13

set backspace=indent,eol,start
set virtualedit=all

NeoBundle 'bling/vim-airline'
set noshowmode
set laststatus=2
" let g:airline_theme='tomorrow-night-bright'
let g:airline_enable_branch=1
"let g:airline_powerline_fonts=1
let g:airline_detect_whitespace = 1
let g:airline#extensions#hunks#non_zero_only = 1

let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_min_count = 1

" copy-paste shortcut.
nmap Y y$

" navigation
imap <c-h> <left>
imap <c-j> <down>
imap <c-k> <up>
imap <c-l> <right>

"unmap arrows
nnoremap   <up>     <nop>
nnoremap   <down>   <nop>
nnoremap   <left>   <nop>
nnoremap   <right>  <nop>

" treat visual lines as ordinal
nnoremap gj j
nnoremap gk k

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" ctrl-p plugin
NeoBundle 'kien/CtrlP.vim'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$|public',
  \ 'file': '\.mako\.py$\|\.so$\$',
  \ }
nmap <c-b> :CtrlPBuffer<cr>

" syntastic
NeoBundle 'scrooloose/syntastic'

" for mako files
NeoBundle 'mako.vim'
autocmd bufread,bufnewfile *.mako set filetype=mako
autocmd filetype mako set syntax=mako

" js filetypes
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload': {'filetypes': ['javascript']}}
autocmd filetype javascript setlocal sw=2 sts=2 et

" for yaml files
NeoBundleLazy 'avakhov/vim-yaml', {'autoload': {'filetypes': ['yaml']}}

" Python
NeoBundle 'jpythonfold.vim'
NeoBundleLazy 'kevinw/pyflakes-vim', {'autoload': {'filetypes': ['python']}}
NeoBundleLazy 'pep8', {'autoload': {'filetypes': ['python']}}
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
NeoBundleLazy 'Yggdroot/indentLine', {'autoload': {'filetypes': ['python']}}

" reST
NeoBundle 'Rykka/riv.vim'

" Complete
NeoBundle 'valloric/YouCompleteMe'
let g:ycm_key_list_previous_completion=['<up>']

NeoBundle 'sirver/ultisnips'
NeoBundle 'honza/vim-snippets'
" trigger configuration. do not use <tab> if you use https://github.com/valloric/youcompleteme.
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsListSnippets="<c-s-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

NeoBundleLazy 'sjl/gundo.vim', { 'autoload' : {'commands': 'GundoToggle'}}
" Git
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'

NeoBundle 'ukrainian-enhanced.vim'

call neobundle#end()

" set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
imap <f5> <c-^>
highlight lCursor guifg=NONE guibg=Cyan

filetype plugin indent on
syntax enable

NeoBundleCheck
