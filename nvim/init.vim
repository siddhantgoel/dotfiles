if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(stdpath('data') . '/plugged')

" general plugins
Plug 'junegunn/goyo.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'

" languages
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'fatih/vim-go'
Plug 'hashivim/vim-terraform'
Plug 'hynek/vim-python-pep8-indent'
Plug 'isRuslan/vim-es6'
Plug 'nathangrigg/vim-beancount'
Plug 'plasticboy/vim-markdown'
Plug 'posva/vim-vue'
Plug 'rust-lang/rust.vim'
Plug 'tshirtman/vim-cython'
Plug 'vim-crystal/vim-crystal'
Plug 'vim-ruby/vim-ruby'
Plug 'ziglang/zig.vim'

" themes
Plug 'Mofiqul/dracula.nvim'
Plug 'altercation/vim-colors-solarized'
Plug 'arcticicestudio/nord-vim'
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
set guifont=Monaco:h12
au FocusGained * :checktime
set incsearch
set hlsearch
set ruler

nnoremap <Space> :set hlsearch!<CR>

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" turn on syntax highlighting
syntax on

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all 
" the plugins.
let mapleader=","

set guioptions-=m
set guioptions-=T

" ===========
" Indentation
" ===========

" Comment the following two lines to switch back the config
set autoindent
set smartindent

"  default text width
set textwidth=80

" spaces over tabs
set smarttab
set expandtab

" default indentation settings
set tabstop=4
set softtabstop=4
set shiftwidth=4

" indentation settings for specific filetypes
au BufRead,BufNewFile *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
au BufRead,BufNewFile *.cr setlocal tabstop=2 softtabstop=2 shiftwidth=2

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

" ====
" Undo
" ====

set undodir=~/.vim/undo
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

" =======
" Plugins
" =======

" NERDTree
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.pyc$', '^__pycache__$', '^node_modules$', '^.git$']

" vim-go
let go_highlight_trailing_whitespace_error = 0
let go_highlight_chan_whitespace_error = 0
let go_highlight_extra_types = 0
let go_highlight_space_tab_error = 0
let go_highlight_trailing_whitespace_error = 0
let g:go_version_warning = 0

" Telescope
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <C-g> <cmd>Telescope live_grep<cr>
