local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

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
    use 'natecraddock/workspaces.nvim'
    use 'natecraddock/sessions.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-tree/nvim-tree.lua'
    use 'scrooloose/nerdcommenter'
    use 'stevearc/conform.nvim'
    use 'tpope/vim-surround'

    -- languages
    use 'neovim/nvim-lspconfig'
    use 'nvim-treesitter/nvim-treesitter'

    -- themes
    use 'projekt0n/github-nvim-theme'
    use 'rakr/vim-one'
    use 'savq/melange-nvim'
    use { 'sonph/onehalf', rtp = 'vim/' }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
