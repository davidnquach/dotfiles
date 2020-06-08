set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

call plug#begin()
Plug 'ryanoasis/vim-devicons'
Plug 'elixir-lang/vim-elixir'
Plug 'dhruvasagar/vim-table-mode'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'mhinz/vim-startify'
Plug 'kshenoy/vim-signature'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'chaoren/vim-wordmotion'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/vim-auto-save'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'dense-analysis/ale'
Plug 'benmills/vimux'
Plug 'spiegela/vimix'
Plug 'skalnik/vim-vroom'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'slashmili/alchemist.vim'
Plug 'neomake/neomake'
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdtree'
Plug 'easymotion/vim-easymotion'
call plug#end()

set clipboard+=unnamedplus

"*** Ale ***
let g:ale_linters = {
\  'elixir': ['elixir-ls'],
\}
let g:ale_fixers = {
\   'elixir': ['mix_format'],
\}
let g:ale_elixir_elixir_ls_release='~/Projects/elixir-ls/release/'

source ~/.vimrc
