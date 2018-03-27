" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" NERDTree - Navigation
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Auto-Pairs - Auto Parens
Plug 'jiangmiao/auto-pairs'

" deoplete.nvim - Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Vim Fugitive - Git Contorls
Plug 'tpope/vim-fugitive'

" Lightline - Status Line REPLACED BY vim-airline
" Plug 'itchyny/lightline.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" CtrlP - Fuzzy Finder
Plug 'ctrlpvim/ctrlp.vim'

" vim-move - Move Line(s) of code
Plug 'matze/vim-move'

" numbers.vim - Smart Line Numbers
Plug 'myusuf3/numbers.vim'

" vim-sensible - Vim Standards
Plug 'tpope/vim-sensible'

" supertab - Adds tab completion
Plug 'ervandew/supertab'

" vim-vinegar - Navigation
Plug 'tpope/vim-vinegar'

" Base16
Plug 'chriskempson/base16-vim'

" JS Highlighting
Plug 'pangloss/vim-javascript'

" JSX Highlighting
Plug 'mxw/vim-jsx'

" Tag Adding
Plug 'mattn/emmet-vim'

" Linting
Plug 'w0rp/ale'

" Async
Plug 'skywind3000/asyncrun.vim'

" Initialize plugin system
call plug#end()

" NERDTree
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-b> :NERDTreeFind<CR>

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" numbers.vim Ignore List
let g:numbers_exclude = ['nerdtree']

" numbers.vim Mappings
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

" Remap Movement
nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <C-Down> <c-w>j

" Indentation Stuff
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

" Base16-Shell Color Settings
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Remove trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

" move up and down by row
nnoremap j gj
nnoremap k gk

" search
set hlsearch
set ignorecase
set incsearch
set smartcase
nmap <silent> <Space>c :set hlsearch!<CR>

" Stop vim from creating automatic backups
set noswapfile
set nobackup
set nowb

" JSX Configuration
let g:jsx_ext_required = 0

" Emmet Configuration
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" Ale Config
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

" JS Auto Fix
autocmd BufWritePost *.js AsyncRun -post=checktime standard --fix %

" Vim Move
let g:move_key_modifier = 'C'

" CtrlP Config
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Airline
let g:airline_theme='base16'
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
