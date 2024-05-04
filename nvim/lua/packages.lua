local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({
            'git',
            'clone',
            '--depth',
            '1',
            'https://github.com/wbthomason/packer.nvim',
            install_path
        })
        vim.cmd [[packadd packer.nvim]]
        return true
    end

    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- general
    use 'Exafunction/codeium.vim'
    use 'drzel/vim-gui-zoom'
    use 'junegunn/goyo.vim'
    use 'natecraddock/sessions.nvim'
    use 'natecraddock/workspaces.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-tree/nvim-tree.lua'
    use 'scrooloose/nerdcommenter'
    use 'tpope/vim-surround'

    -- languages
    use 'MaxMEllon/vim-jsx-pretty'
    use 'astral-sh/ruff-lsp'
    use 'hashivim/vim-terraform'
    use 'nathangrigg/vim-beancount'
    use 'neovim/nvim-lspconfig'
    use 'nvim-treesitter/nvim-treesitter'
    use 'plasticboy/vim-markdown'
    use 'posva/vim-vue'
    use 'ray-x/go.nvim'
    use 'ray-x/guihua.lua'
    use 'rust-lang/rust.vim'
    use 'tshirtman/vim-cython'
    use 'vim-crystal/vim-crystal'
    use 'vim-ruby/vim-ruby'
    use 'ziglang/zig.vim'

    -- themes
    use 'Mofiqul/dracula.nvim'
    use 'altercation/vim-colors-solarized'
    use 'arcticicestudio/nord-vim'
    use 'ayu-theme/ayu-vim'
    use 'folke/tokyonight.nvim'
    use 'jonathanfilip/vim-lucius'
    use 'kepano/flexoki-neovim'
    use 'projekt0n/github-nvim-theme'
    use 'rakr/vim-one'
    use 'sainnhe/everforest'
    use 'savq/melange-nvim'
    use { 'catppuccin/nvim', as = 'catppuccin' }
    use {'sonph/onehalf', rtp = 'vim/'}

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
