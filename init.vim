" Basic nvim Set
set encoding=UTF-8
syntax on
set number
set ruler
set autoindent
set smartindent
set nowrap
set tabstop=2
set shiftwidth=2

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.config/nvim/after')

" Language Server Protocol(LSP) for nvim
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'

" Syntax Highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Auto-Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" telecope.nvim
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Web Devicons
Plug 'kyazdani42/nvim-web-devicons'

" lualine
Plug 'hoob3rt/lualine.nvim'

" Auto Bracket Pairing
Plug 'cohama/lexima.vim'

" NerdTree & Tagbar
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'

" NERDTree Devicons
Plug 'ryanoasis/vim-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'

" Up - Tab Bar
Plug 'romgrk/barbar.nvim'

call plug#end()

" --------------------------

" ctags settings for NERDTree
let g:tagbar_ctags_bin = "/opt/homebrew/bin/ctags"
let g:Tlist_Ctags_Cmd='/opt/homebrew/bin/ctags/5.8_1/bin/ctags'

" NERDTree Key Mapping
nmap <A-v> :NERDTree <bar> <CR>
nmap <A-b> :NERDTreeClose <bar> <CR>

" Compile Option and Key Mapping
let g:python3_host_prog = 'path/to/python3'

au FileType python nmap <buffer> <F5> :term python %<CR>
au FileType c nmap <buffer> <F5> :term gcc % && ./a.out<CR>

" annotaion key map
vmap <A-/> :norm i# <CR>
imap <A-/> # <CR>

" save key map
nmap <A-s> :w <CR>
nmap <A-S> :wq <CR>

" undo, redo key map
nmap <A-z> :undo <CR>
nmap <A-Z> :redo <CR>
