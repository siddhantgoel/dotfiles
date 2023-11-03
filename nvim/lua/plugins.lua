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
require('nvim-tree').setup({
    update_cwd = true
})

-- telescope
map('n', '<C-p>', builtin.find_files, {})
map('n', '<C-g>', builtin.live_grep, {})
map('n', '<C-k>', telescope.extensions.workspaces.workspaces, {})

-- sessions
require("sessions").setup({
    session_filepath = vim.fn.stdpath("data") .. "/sessions",
    absolute = true,
})

-- workspaces
require("workspaces").setup({
    hooks = {
        open_pre = {
            "SessionsSave",
            "silent %bdelete!",
        },
        open = {
            "SessionsLoad",
            "NvimTreeOpen",
        },
    }
})
telescope.load_extension("workspaces")

-- nvim-go
require('go').setup()

local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
        require('go.format').gofmt()
    end,
    group = format_sync_grp,
})
