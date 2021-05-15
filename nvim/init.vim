if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(stdpath('data') . '/plugged')

" general plugins
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fholgado/minibufexpl.vim'
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'

" languages
Plug 'fatih/vim-go'
Plug 'godlygeek/tabular'
Plug 'hashivim/vim-terraform'
Plug 'hynek/vim-python-pep8-indent'
Plug 'isRuslan/vim-es6'
Plug 'nathangrigg/vim-beancount'
Plug 'plasticboy/vim-markdown'
Plug 'posva/vim-vue'
Plug 'rust-lang/rust.vim'
Plug 'tshirtman/vim-cython'
Plug 'ziglang/zig.vim'

" themes
Plug 'altercation/vim-colors-solarized'
Plug 'ayu-theme/ayu-vim'
Plug 'jonathanfilip/vim-lucius'
Plug 'rakr/vim-one'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

call plug#end()

" ==============
" General Config
" ==============

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set showcmd                     "Show incomplete cmds down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set autoread                    "Reload files changed outside vim
set guifont=Ubuntu\ Mono:h12
au FocusGained * :checktime
set incsearch
set hlsearch
set ruler

nnoremap <Space> :set hlsearch!<CR>

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all 
" the plugins.
let mapleader=","

set guioptions-=m
set guioptions-=T

" =========
" Filetypes
" =========

autocmd BufNewFile,BufRead *.sls set filetype=yaml
autocmd BufNewFile,BufRead *.lr set filetype=markdown
autocmd FileType vue syntax sync fromstart

" ===========
" Indentation
" ===========

" Comment the following two lines to switch back the config
set autoindent
set smartindent

set smarttab
set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4
set textwidth=80

" Display tabs and trailing spaces visually
" set list listchars=tab:>-,trail:·

set wrap
set linebreak    "Wrap lines at convenient points

" ==========
" Swap Files
" ==========

set noswapfile
set nobackup
set nowb

" ===============
" Persistent Undo
" ===============
"
" Keep undo history across sessions, by storing in file.
" Only works all the time.

set undodir=~/.vim/backups
set undofile

" =====
" Folds
" =====

set foldmethod=manual   "fold manually
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default

" ==========
" Completion
" ==========

set wildmode=list:longest

" enable ctrl-n and ctrl-p to scroll thru matches
set wildmenu

let NERDTreeIgnore = ['__pycache__$', '\.pyc$', '^terraform.tfstate.*.backup', '\.so$', 'node_modules$']

let go_highlight_trailing_whitespace_error = 0
let go_highlight_chan_whitespace_error = 0
let go_highlight_extra_types = 0
let go_highlight_space_tab_error = 0
let go_highlight_trailing_whitespace_error = 0

let g:go_version_warning = 0

" CtrlP
let g:ctrlp_custom_ignore = {
  \ 'dir' : '\.git$\|build$\|node_modules\|dist\|__pycache__' ,
  \ 'file' : '\v\.(pyc|so|dat|png|jpg)$'
  \ }
