local telescope = require('telescope')
local builtin = require('telescope.builtin')
local g = vim.g
local map = vim.keymap.set

-- vim-go
g.go_version_warning = 0

g.go_highlight_trailing_whitespace_error = 0
g.go_highlight_chan_whitespace_error = 0
g.go_highlight_extra_types = 0
g.go_highlight_space_tab_error = 0
g.go_highlight_trailing_whitespace_error = 0

-- nvim-tree
require('nvim-tree').setup()

-- telescope
map('n', '<C-p>', builtin.find_files, {})
map('n', '<C-g>', builtin.live_grep, {})

-- workspaces
require("workspaces").setup({
    hooks = {
        open = { "NvimTreeOpen" },
    }
})
telescope.load_extension("workspaces")