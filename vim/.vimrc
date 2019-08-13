" Pathogen.vim to add plugins easily
execute pathogen#infect()
"---------------------
"      SETTINGS      |
"---------------------
let mapleader = " "
let g:auto_save = 1
let g:gruvbox_guisp_fallback = "bg"
colo gruvbox
filetype indent on " Syntax highlighting
filetype plugin on " Syntax highlighting
syntax on          " File type recognition
set autoindent
set autoread " Auto refresh file
set background=dark
set backspace=indent,eol,start " Fixes backspace
set colorcolumn=85
set cursorline
set encoding=UTF-8
set foldlevelstart=20
set foldmethod=syntax
set formatoptions=qrn1
set gdefault
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set modelines=0    " Prevents security exploits
set nobackup
set nocompatible   " Turns off compatibility with vi
set nofoldenable
set nowritebackup
set re=1
set relativenumber
set ruler
set scrolloff=3
set shortmess+=c
set showcmd
set showmatch
set showmode
set signcolumn=yes
set smartcase
set smartindent
set spell
set spelllang=en
set splitright
set tabstop=2 shiftwidth=2 expandtab
set tags=./tags,tags;
set textwidth=79
set ttyfast
set undofile
set updatetime=300
set visualbell
set wildmenu
set wildmode=list:longest
set wrap

"*** Airline ***
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts=1
set t_Co=256

"*** NerdCommenter ***
let g:NERDSpaceDelims = 1

"*** Fugitive ***
set statusline+={FugitiveStatusline()}

"---------------------
"      MAPPINGS      |
"---------------------
"*** FZF ***
nnoremap <leader>/ :Ag<cr>
nnoremap <leader>pb :Buffers<cr>
nnoremap <leader>pf :Files<cr>
nnoremap <leader>pm :Marks<cr>
nnoremap <leader>pw :Windows<cr>
nnoremap <C-p> :Files<cr>
let g:fzf_buffers_jump = 1

"*** NerdTree ***
nnoremap <leader>t :NERDTreeToggle<CR>

"*** Vim ***
inoremap fd <ESC>
nnoremap / /\v
nnoremap <leader><tab> <C-^> " switch to previous buffer
nnoremap <leader>sc :noh<cr>
nnoremap <tab> %
vnoremap / /\v
vnoremap <tab> %
nnoremap <C-a> <Nop> " Remove increment behavior
nnoremap <C-x> <Nop> " Remove decrement behavior
nnoremap <leader>r :so ~/.config/nvim/init.vim<cr> " Reload vimrc
nmap <leader>fy :let @* = expand("%")<cr>

"*** Fugitive ***
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gs :Gstatus<cr>

"*** Ultisnips ***
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpFowardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsUsePythonVersion=3
"---------------------
"      FUNCTIONS     |
"---------------------
