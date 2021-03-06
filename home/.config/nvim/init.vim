set nocompatible
let mapleader=","
filetype off
set history=1000
set rtp+=~/.vim/bundle/neobundle.vim

call plug#begin('~/.config/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'editorconfig/editorconfig-vim'
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'junegunn/fzf.vim'
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'rhysd/vim-grammarous'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'tpope/vim-surround'

call plug#end()

syntax on
colorscheme nord

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set shiftround
set autoindent
set smartindent
set noswapfile
set autoread
set number
set relativenumber
set textwidth=0
set wrapmargin=0
set scrolloff=5
set ignorecase " Required for smartcase
set smartcase
set incsearch
set nohlsearch
set conceallevel=0
let g:vim_json_syntax_conceal=0
let g:tex_flavor = 'latex'
set wildmode=longest,list,full
set wildmenu

au BufRead,BufNewFile *.gnuplot setfiletype gnuplot
au BufRead,BufNewFile *.vue setfiletype html

" Moving
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h

nnoremap <silent> <leader>p :FZF<CR>
nnoremap <silent> \ :Ag<space>
map <silent> <leader>n :NERDTreeToggle<CR>
map <silent> <leader>w :update<CR>
map <silent> <leader>s :'<,'>sort<CR>
map <silent> <leader>q :q<CR>
map <silent> <leader>gd :Gdiff<CR>
map <silent> <leader>gb :Gblame<CR>
map <silent> <leader>+ :exe "resize" . (winheight(0) * 3/2)<CR>
map <silent> <leader>- :exe "resize" . (winheight(0) * 2/3)<CR>
nmap <CR> o<Esc>
noremap Y y$

imap jk <ESC>
let NERDTreeMapHelp=''
let NERDTreeMapOpenInTab = '<C-T>'
let NERDTreeMapOpenSplit = '<C-S>'
let NERDTreeMapOpenVSplit = '<C-V>'
let NERDTreeIgnore = ['\.git', '\.pyc$']
let NERDTreeShowHidden=1

set wildignore+=node_modules/**

" Comment strings
autocmd FileType c setlocal commentstring=//\ %s
autocmd FileType conf setlocal commentstring=#\ %s
autocmd FileType cpp setlocal commentstring=//\ %s
autocmd FileType vim setlocal commentstring=\"\ %s
autocmd FileType zsh setlocal commentstring=#\ %s
autocmd FileType cmake setlocal commentstring=#\ %s
autocmd FileType gnuplot setlocal commentstring=#\ %s
autocmd FileType meson setlocal commentstring=#\ %s

" FZF keybindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

