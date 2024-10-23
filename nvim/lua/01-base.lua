local cmd = vim.cmd
local g = vim.g
local keymap = vim.keymap
local set = vim.opt

-- appearance
set.number = true               -- line numbers
set.showcmd = true              -- show partial command in the last line of the screen
set.guifont = 'Monaco:h12'      -- GUI font/size
set.ruler = true                -- line and column number of cursor position
set.hidden = true               -- buffers can exist without being in a window
set.guicursor = 'n-v-c-sm:block,i-ci-ve:ver25-Cursor,r-cr-o:hor20,a:blinkon0'
cmd("colorscheme github_light_high_contrast")
set.background = 'light'

-- behavior
set.autoread = true                 -- reload files changed outside Neovim
set.backspace = 'indent,eol,start'  -- allow backspace

-- leader
g.mapleader = ','

-- search
set.incsearch = true
set.hlsearch = true
keymap.set('n', '<Space>', function() vim.cmd('set hlsearch!') end)

-- syntax
cmd 'syntax on'

-- indentation
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

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- neovide
if vim.g.neovide then
    g.neovide_hide_mouse_when_typing = true
    g.neovide_cursor_animation_length = 0
    g.neovide_scroll_animation_length = 0
end
