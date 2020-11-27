"---------------------
"      SETTINGS      |
"---------------------
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
let g:auto_save = 1
let g:auto_save_silent = 1
let g:gruvbox_guisp_fallback = "bg"
colo gruvbox
" Syntax highlighting
filetype indent on
" Syntax highlighting
filetype plugin on
" File type recognition
syntax on
set pastetoggle=<F2>
set autoindent
" Auto refresh file
set autoread
" set background=dark
" Fixes backspace
set backspace=indent,eol,start 
set cmdheight=2
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
" Prevents security exploits
set modelines=0
set mouse=a
set nobackup
" Turns off compatibility with vi
set nocompatible
set nofoldenable
set nowritebackup
set re=1
set number relativenumber
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
set spellcapcheck=
set splitbelow
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
set timeoutlen=500

" Vim autoread
au CursorHold,CursorHoldI * checktime
au FocusGained,BufEnter * checktime
nnoremap <leader>zi :tab split<cr>
nnoremap <leader>zo :tab close<cr>

"*** Airline ***
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts=1
set t_Co=256

"*** Calendar.vim ***
let g:calendar_google_calendar = 1

"---------------------
"      MAPPINGS      |
"---------------------
"
"*** Ale ***
autocmd FileType ruby nnoremap <buffer><c-]> :ALEGoToDefinition<cr>

"*** COC **
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

"*** Codi ***
let g:codi#width="0.4"

let g:vroom_use_vimux = 1
let g:vimix_map_keys = 1

"*** FZF ***
nnoremap <leader>/ :Ag<Space>
nnoremap <leader>pb :Buffers<cr>
nnoremap <leader>pf :Files<cr>
nnoremap <leader>pm :Marks<cr>
nnoremap <leader>pw :Windows<cr>
nnoremap <C-p> :Files<cr>
let g:fzf_buffers_jump = 1
" let g:fzf_layout = { 'window': 'call FloatingFZF()' }
" function! FloatingFZF()
"   let buf = nvim_create_buf(v:false, v:true)
"   call setbufvar(buf, '&signcolumn', 'no')

"   let height = float2nr(10)
"   let width = float2nr(80)
"   let horizontal = float2nr((&columns - width) / 2)
"   let vertical = 1

"   let opts = {
"         \ 'relative': 'editor',
"         \ 'row': vertical,
"         \ 'col': horizontal,
"         \ 'width': width,
"         \ 'height': height,
"         \ 'style': 'minimal'
"         \ }

"   call nvim_open_win(buf, v:true, opts)
" endfunction

"*** NerdTree ***
nnoremap <leader>t :NERDTreeFind<CR>
nnoremap <leader>tq :NERDTreeClose<CR>
" autocmd vimenter * NERDTreeFind
" autocmd vimenter * 2wincmd w
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"*** Vim ***
inoremap fd <ESC>
nnoremap / /\v
" switch to previous buffer
nnoremap <leader><tab> <C-^>
nnoremap <leader>sc :noh<cr>
vnoremap / /\v
" Remove increment behavior
nnoremap <C-a> <Nop>
" Remove decrement behavior
nnoremap <C-x> <Nop>
" Reload vimrc
" nnoremap <leader>r :so ~/.config/nvim/init.vim<cr>
nmap <leader>fy :let @*=expand("%")<bar>echo expand("%")<cr>

"*** Fugitive ***
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gs :Gstatus<cr>

"*** Vim WhichKey ***
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey ','<CR>
"*** Org Mode ***
let g:org_agenda_files=['~/org/index.org']

"*** Ultisnips ***
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir=$HOME."/.ultisnips"
let g:UltiSnipsSnippetsDirectories=["UltiSnips", "~/.vim/ultisnips"]
let g:UltiSnipsListSnippets="<C-l>"

"*** Vista ***
let g:vista#renderer#enable = 1

"*** Ale ***
let g:ale_linters = {
\  'ruby': ['rubocop', 'rails_best_practices', 'solargraph'],
\}
let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_fixers = {
\   'elixir': ['mix_format', 'trim_whitespace', 'remove_trailing_lines'],
\   'ruby': ['rubocop', 'trim_whitespace', 'remove_trailing_lines'],
\}

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_elixir_elixir_ls_release='/Users/dquach/Projects/elixir-ls/release'
let g:ycm_language_server =
  \ [
  \   {
  \     'name': 'ruby',
  \     'cmdline': ['/Users/dquach/.asdf/shims/solargraph', 'stdio'],
  \     'filetypes': [ 'ruby' ]
  \   }
  \ ]
" call neomake#configure#automake('rw', 1000)
let g:neomake_elixir_enabled_makers = ['credo']

autocmd! BufWritePost .ex[s] Neomake

" mkdx setting
let g:mkdx#settings     = { 'highlight': { 'enable': 1 },
                        \ 'enter': { 'shift': 1 },
                        \ 'links': { 'external': { 'enable': 1 } },
                        \ 'toc': { 'text': 'Table of Contents', 'update_on_write': 1 },
                        \ 'fold': { 'enable': 1 } }
"---------------------
"      FUNCTIONS     |
"---------------------

autocmd FileType markdown set foldexpr=NestedMarkdownFolds()
