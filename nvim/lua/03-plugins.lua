local telescope = require('telescope')
local builtin = require('telescope.builtin')
local map = vim.keymap.set

require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "beancount",
        "c",
        "css",
        "gitignore",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "ruby",
        "rust",
        "toml",
        "vim",
        "vimdoc",
        "yaml",
        "zig",
    },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
    indent = {
        enable = true
    }
}

-- nvim-tree
require('nvim-tree').setup({
    update_cwd = true
})

-- telescope
map('n', '<C-p>', builtin.find_files, {})
map('n', '<C-g>', builtin.live_grep, {})
map('n', '<C-k>', telescope.extensions.workspaces.workspaces, {})

telescope.load_extension("workspaces")

-- lsp
require('lspconfig').ruff_lsp.setup {
    init_options = {
        settings = {
            args = {}
        }
    }
}

-- workspaces
require('workspaces').setup {
    path = vim.fn.stdpath("data") .. "/workspaces",
    cd_type = "global",
    sort = true,
    mru_sort = true,
    hooks = {
        open = "NvimTreeOpen",
    }
}

-- conform
require("conform").setup({
    formatters_by_ft = {
        python = {
            "ruff_fix",
            "ruff_format",
        },
    },
    format_on_save = {
        timeout_ms = 250,
        lsp_fallback = true,
    },
})
