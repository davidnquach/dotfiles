set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

call plug#begin()
Plug 'ryanoasis/vim-devicons'
Plug 'elixir-lang/vim-elixir'
Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'kshenoy/vim-signature'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
call plug#end()

nmap gcc <plug>NERDCommenterToggle

set clipboard+=unnamedplus

source ~/.vimrc
