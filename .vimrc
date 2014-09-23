set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Navigation
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

" Color themes
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'Zenburn'
Plugin 'chriskempson/base16-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'noahfrederick/vim-hemisu'
Plugin 'altercation/vim-colors-solarized'

" Language support
Plugin 'tpope/vim-bundler'
"Plugin 'guns/vim-clojure-static'
Plugin 'kchmck/vim-coffee-script'
Plugin 'rhysd/vim-crystal'
"Plugin 'tpope/vim-fireplace'
Plugin 'pangloss/vim-javascript'
"Plugin 'mxw/vim-jsx'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'jimenezrick/vimerl'


" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Editing
Plugin 'scrooloose/NERDCommenter'
Plugin 'tpope/vim-surround'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'rking/ag.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Search options
set ignorecase
set smartcase
set incsearch
set hlsearch

" Editing options
set backspace=indent,eol,start
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2
set sts=2

" View options
set scrolloff=3
set ruler
syntax on
set number
set listchars=tab:>-,trail:·,eol:¬
set foldenable
set foldmethod=manual
set nolazyredraw

" Other options
set hidden
set history=1000
runtime macros/matchit.vim
set wildmenu
set wildmode=list:longest
set shortmess=atI
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.swp,*.class,*.pyc
set wildignore+=*/build/*
set autoread

" Filetypes
filetype on
filetype plugin indent on
au BufNewFile,BufRead [Cc]apfile set filetype=ruby

" Appearence
if has("gui_running")
    "set lines=61
    "set columns=203
    set lines=79
    set columns=269
    let rdark_current_line = 1
    set guioptions-=T
    set guioptions-=m
endif

set background=light
"set background=dark
"colorscheme base16-tomorrow
"colorscheme zenburn
colorscheme solarized
"colorscheme mac_classic
"colorscheme dawn
"colorscheme Tomorrow-Night-Eighties
set cursorline

" Ctrl-P
let g:ctrlp_max_height = 20

" Shortcuts
let mapleader = ","
"let maplocalleader = "\\"
nmap <silent> <leader>h :silent :nohlsearch<CR>
nmap <silent> <leader>s :set nolist!<CR>
nmap <silent> <leader>w :set wrap!<CR>

nmap <leader>f :CtrlPCurWD<CR>
nmap <leader>F :CtrlPCurFile<CR>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>r :CtrlPMRU<CR>

nmap <leader>n :NERDTreeToggle<CR>

"nmap <leader>( :RainbowParenthesesToggleAll<CR>

nmap <C-PageUp> :bprev<CR>
nmap <C-PageDown> :bnext<CR>
nmap <F3> :cn<CR>
nmap <S-F3> :cp<CR>

set number
