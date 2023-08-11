local cmd = vim.cmd
local g = vim.g
local set = vim.opt

-- appearance
set.number = true               -- line numbers
set.showcmd = true              -- show partial command in the last line of the screen
set.guifont = 'Monaco:h12'      -- GUI font/size
set.ruler = true                -- line and column number of cursor position
set.hidden = true               -- buffers can exist without being in a window
set.guicursor = 'n-v-c-sm:block,i-ci-ve:ver25-Cursor,r-cr-o:hor20,a:blinkon0'

-- behavior
set.autoread = true                 -- reload files changed outside Neovim
set.backspace = 'indent,eol,start'  -- allow backspace

-- leader
g.mapleader = ','

-- search
set.incsearch = true
set.hlsearch = true

-- syntax
cmd 'syntax on'

-- indentation
set.autoindent = true
set.smartindent = true
set.textwidth = 88
set.smarttab = true
set.expandtab = true
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.wrap = true
set.linebreak = true

-- swap files
set.swapfile = false
set.backup = false
set.writebackup = false

-- undo
set.undodir = '~/.vim/undo'

-- folds
set.foldmethod = 'manual'
set.foldnestmax = 10
set.foldenable = false

-- completions
set.wildmode = 'list:longest'

-- neovide
if vim.g.neovide then
    g.neovide_hide_mouse_when_typing = false
    g.neovide_cursor_animation_length = 0

    cmd("colorscheme one")
    set.background = 'light'
end
