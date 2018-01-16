" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off

" TODO: this may not be in the correct place. It is intended to allow overriding <Leader>.
" source ~/.vimrc.before if it exists.
if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

" ============= Vundle initialization ================

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" general plugins
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'uarun/vim-protobuf'
Plugin 'vimwiki/vimwiki'

" languages
Plugin 'elixir-editors/vim-elixir'
Plugin 'fisadev/vim-isort'
Plugin 'hashivim/vim-terraform'
Plugin 'isRuslan/vim-es6'
Plugin 'jsx/jsx.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'nathangrigg/vim-beancount'
Plugin 'othree/html5.vim'
Plugin 'posva/vim-vue'
Plugin 'rust-lang/rust.vim'
Plugin 'tshirtman/vim-cython'

" themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'joshdick/onedark.vim'
Plugin 'octol/vombatidae-vim'
Plugin 'scwood/vim-hybrid'

call vundle#end()            " required
filetype plugin indent on    " required

" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set autoread                    "Reload files changed outside vim
set guifont=Fira\ Mono\ 10
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

let g:ruby_path = system('echo $HOME/.rbenv/shims')

if $TERM == "xterm-256color"
    set t_co=256
endif

set guioptions-=m
set guioptions-=T

" ================ Indentation ======================

" set autoindent
" set smartindent

set smarttab
set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4
set textwidth=80
set background=light

" Display tabs and trailing spaces visually
set list listchars=tab:>-,trail:·

set wrap
set linebreak    "Wrap lines at convenient points

autocmd BufNewFile,BufRead *.sls set filetype=yaml
autocmd BufNewFile,BufRead *.lr set filetype=markdown

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

set undodir=~/.vim/backups
set undofile

" ================ Folds ============================

set foldmethod=manual   "fold manually
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=htmlcov/**
set wildignore+=*.ipynb

let NERDTreeIgnore = ['\.pyc$', '\.ipynb$', '__pycache__$', '^terraform.tfstate.*.backup', '\.so$']

let go_highlight_trailing_whitespace_error = 0
let go_highlight_chan_whitespace_error = 0
let go_highlight_extra_types = 0
let go_highlight_space_tab_error = 0
let go_highlight_trailing_whitespace_error = 0

autocmd FileType vue syntax sync fromstart
