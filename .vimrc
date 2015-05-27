
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
        let iCanHazVundle=0
      else
        let iCanHazVundle=1
    endif
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    Bundle 'gmarik/vundle'
    "Add your bundles here
    "Bundle 'Syntastic'
    " Navigation
    Bundle 'scrooloose/nerdtree'
    Bundle 'kien/ctrlp.vim'

    " Color themes
    Bundle 'chriskempson/vim-tomorrow-theme'
    Bundle 'Zenburn'
    Bundle 'chriskempson/base16-vim'
    Bundle 'flazz/vim-colorschemes'
    Bundle 'noahfrederick/vim-hemisu'
    Bundle 'altercation/vim-colors-solarized'

    " Language support
    Bundle 'tpope/vim-bundler'
    "Bundle 'guns/vim-clojure-static'
    Bundle 'kchmck/vim-coffee-script'
    "Bundle 'rhysd/vim-crystal'
    "Bundle 'tpope/vim-fireplace'
    Bundle 'pangloss/vim-javascript'
    "Bundle 'mxw/vim-jsx'
    Bundle 'groenewege/vim-less'
    Bundle 'tpope/vim-markdown'
    Bundle 'tpope/vim-rails'
    Bundle 'vim-ruby/vim-ruby'
    Bundle 'jimenezrick/vimerl'

    " Git
    Bundle 'tpope/vim-fugitive'
    Bundle 'airblade/vim-gitgutter'

    " Editing
    Bundle 'scrooloose/NERDCommenter'
    Bundle 'tpope/vim-surround'
    Bundle 'AndrewRadev/splitjoin.vim'
    Bundle 'rking/ag.vim'
    "...All your other bundles...
    if iCanHazVundle == 0
        echo "Installing Bundles, please ignore key map error messages"
        echo ""
        :BundleInstall
    endif
" Setting up Vundle - the vim plugin bundler end

set nocompatible
filetype off                  " required

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
"colorscheme solarized
"colorscheme mac_classic
"colorscheme dawn
colorscheme Tomorrow-Night-Eighties
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
filetype plugin on

"nmap <leader>( :RainbowParenthesesToggleAll<CR>

nmap <C-PageUp> :bprev<CR>
nmap <C-PageDown> :bnext<CR>
nmap <F3> :cn<CR>
nmap <S-F3> :cp<CR>

set number
