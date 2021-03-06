    let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
        let iCanHazVundle=0
      else
        let iCanHazVundle=1
    endif
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    "Add your bundles here
    "Plugin 'Syntastic'
    "Navigation
    Plugin 'scrooloose/nerdtree'
    Plugin 'kien/ctrlp.vim'
    Plugin 'rking/ag.vim'
    Plugin 'bling/vim-airline'

    "Color themes
    Plugin 'chriskempson/vim-tomorrow-theme'
    Plugin 'Zenburn'
    Plugin 'chriskempson/base16-vim'
    Plugin 'tomasr/molokai'
    Plugin 'flazz/vim-colorschemes'
    Plugin 'gosukiwi/vim-atom-dark'
    Plugin 'noahfrederick/vim-hemisu'
    Plugin 'altercation/vim-colors-solarized'

    "Language support
    Plugin 'elixir-lang/vim-elixir'
    Plugin 'rhysd/vim-crystal'
    Plugin 'tpope/vim-bundler'
    "Plugin 'guns/vim-clojure-static'
    Plugin 'kchmck/vim-coffee-script'
    "Plugin 'tpope/vim-fireplace'
    Plugin 'pangloss/vim-javascript'
    Plugin 'mxw/vim-jsx'
    Plugin 'groenewege/vim-less'
    Plugin 'tpope/vim-markdown'
    Plugin 'vim-ruby/vim-ruby'
    Plugin 'jimenezrick/vimerl'
    Plugin 'tpope/vim-rails'
    Plugin 'tpope/vim-rake'

    "Git
    Plugin 'tpope/vim-fugitive'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'Xuyuanp/nerdtree-git-plugin'

    "Editing
    "Plugin 'vim-scripts/paredit.vim'
    Plugin 'kien/rainbow_parentheses.vim'
    Plugin 'scrooloose/NERDCommenter'
    Plugin 'tpope/vim-surround'
    Plugin 'tpope/vim-unimpaired'
    Plugin 'AndrewRadev/splitjoin.vim'
    Plugin 'matze/vim-move'
    Plugin 'FooSoft/vim-argwrap'

    "All of your Plugins must be added before the following line
    call vundle#end()            "required
    filetype plugin indent on    "required
    "To ignore plugin indent changes, instead use:
    "filetype plugin on
    "
    "Brief help
    ":PluginList       - lists configured plugins
    ":PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
    ":PluginSearch foo - searches for foo; append `!` to refresh local cache
    ":PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
    "
    "see :h vundle for more details or wiki for FAQ
    "Put your non-Plugin stuff after this line
    if iCanHazVundle == 0
        echo "Installing Plugins, please ignore key map error messages"
        echo ""
        :PluginInstall
    endif
"Setting up Vundle - the vim plugin bundler end

set nocompatible
filetype off                 "required
filetype plugin indent on    "required
"To ignore plugin indent changes, instead use:
"filetype plugin on
"
"Brief help
":PluginList       - lists configured plugins
":PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
":PluginSearch foo - searches for foo; append `!` to refresh local cache
":PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
"see :h vundle for more details or wiki for FAQ
"Put your non-Plugin stuff after this line

"Search options
set ignorecase
set smartcase
set incsearch
set hlsearch

"Editing options
set backspace=indent,eol,start
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2
set sts=2

"View options
set scrolloff=3
set ruler
syntax on
set number
set listchars=tab:>-,trail:·,eol:¬ "set nolist!
set foldenable
set foldmethod=manual
set nolazyredraw
set mouse=a

"Other options
set hidden
set history=1000
runtime macros/matchit.vim
set wildmenu
set wildmode=list:longest
set shortmess=atI
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.swp,*.class,*.pyc
set wildignore+=*/build/*
set autoread

"Filetypes
filetype on
filetype plugin indent on
au BufNewFile,BufRead [Cc]apfile set filetype=ruby

"Appearence
if has("gui_running")
  "set lines=61
  "set columns=203
  set lines=79
  set columns=269
  set guifont=Monaco:h14
  "let rdark_current_line = 1
  set guioptions-=T
  set guioptions-=m
  "colorscheme zenburn
  "colorscheme atom-dark
  colorscheme Tomorrow-Night-Eighties
  "colorscheme Tomorrow-Night
  "colorscheme solarized
  "colorscheme mac_classic
  "set background=light
  set background=dark
  set cursorline
else
  "colorscheme zenburn
  "colorscheme 256-grayvim
  "colorscheme mac_classic
  "colorscheme Tomorrow-Night
  "colorscheme Tomorrow-Night-Eighties
  colorscheme atom-dark-256
  "set background=light
  set background=dark
  set cursorline
  "let base16colorspace=256  "Access colors present in 256 colorspace
endif

filetype plugin on

"GitGutter
let g:gitgutter_max_signs = 1000

"Airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

"Ctrl-P
let g:ctrlp_max_height = 20
let g:ctrlp_match_window = 'results:100'
let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn|bundle)|tmp)$'
let g:ctrlp_show_hidden = 1
let g:ctrlp_match_window = 'results:100'

"eslint + flow
"let g:syntastic_javascript_checkers = [ 'eslint', ‘flow’ ]
"let g:syntastic_javascript_flow_exe = ‘flow’

"vim-move
let g:move_key_modifier = 'C'

"Shortcuts
let mapleader = "\<Space>"
"let mapleader = ","
"let maplocalleader = ","
nmap <silent> <leader>h :silent :nohlsearch<CR>
nmap <silent> <leader>s :set nolist!<CR>
nmap <silent> <leader>w :set wrap!<CR>

nmap <leader>f :CtrlPCurWD<CR>
nmap <leader>F :CtrlPCurFile<CR>
nmap <leader>b :CtrlPBuffer<CR>
nnoremap <leader><leader> :CtrlPMRU<CR>
nmap <leader>, :CtrlPClearAllCaches<CR>
nmap <leader><TAB> <leader>b<CR>

nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>m :NERDTreeFind<CR>
let NERDTreeShowHidden=1

nmap <leader>( :RainbowParenthesesToggleAll<CR>

" vim-argwrap
nnoremap <silent> <leader>a :ArgWrap<CR>
let g:argwrap_padded_braces = '{'

" switch to normal mode
inoremap jk <esc>

" Center search results
nnoremap n nzz
nnoremap N Nzz

" Highlights
nnoremap * *#

" Moving to beginning/end of line
nnoremap H ^
nnoremap L $

"edit .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"copy and paste from clipboard
vnoremap <leader>y "+y
vnoremap <leader>d "+d
nnoremap <leader>p "+p
nnoremap <leader>p "+p
vnoremap <leader>p "+p
vnoremap <leader>p "+p

nmap <F3> :cn<CR>
nmap <S-F3> :cp<CR>

"Split navigation
nnoremap <s-j> <c-w>j
nnoremap <s-k> <c-w>k
nnoremap <s-h> <c-w>h
nnoremap <s-l> <c-w>l

"alternative mapping for joining lines
nnoremap <leader>j <s-j>

"Moving to beginning/end of line
nnoremap <c-h> ^
nnoremap <c-l> $

nmap <c-left> :bprev<CR>
nmap <c-right> :bnext<CR>

nnoremap <leader>r <c-l>

"e    to open file and close the quickfix window
"o    to open (same as enter)
"go   to preview file (open but maintain focus on ag.vim results)
"t    to open in new tab
"T    to open in new tab silently
"h    to open in horizontal split
"H    to open in horizontal split silently
"v    to open in vertical split
"gv   to open in vertical split silently
"q    to close the quickfix window

set exrc
set secure
