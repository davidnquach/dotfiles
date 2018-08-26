" Pathogen.vim to add plugins easily
execute pathogen#infect()

" Turns off compatibility with vi
set nocompatible

" Prevents security exploits
set modelines=0

" Makes tabs 2 spaces and adds smart indention
set tabstop=2 shiftwidth=2 expandtab
set smartindent

" Turns on syntax highlighting and file type recognition
filetype indent on
filetype plugin on
syntax on

" Makes vim sane
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set undofile

"Change leader key
let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Settings for plugin Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
      \ "mode": "active",
      \ "passive_filetypes": ["haml", "scss", "sass"] }

" Auto refreshes when a file has been changed
set autoread

" Solarized colorscheme
" set background=light
colorscheme monokai-soda

" Turns on backspace to work like you think it would
set backspace=indent,eol,start

" Plugin to auto save
let g:auto_save = 1

" Looks for tags in the current directory then up to $HOME
set tags=./tags;$HOME

" Map jj to exit out of insert mode
inoremap jj <ESC>

" Set smart case searching
set ignorecase
set smartcase

" NERDCommenter add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Turn on statusline in vim
set laststatus=2

" Set airline theme
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts=1
set t_Co=256

" Turns on relative number
set relativenumber

" Shortcut for NERDTree
nnoremap <leader>t :NERDTreeToggle<CR>

set re=1
map <C-n> :NERDTreeToggle<CR>
