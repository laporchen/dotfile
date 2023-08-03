-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        -- file search
        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.1',
            -- or                            , branch = '0.1.x',
            requires = { { 'nvim-lua/plenary.nvim' } }
        }
        use { 'ThePrimeagen/harpoon' }

        -- theme
        use { 'folke/tokyonight.nvim', { branch = 'main' } }

        -- treesitter
        use {'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }}
        use { 'nvim-treesitter/playground' }

        -- git
        use { 'lewis6991/gitsigns.nvim' }
        use { 'zivyangll/git-blame.vim' }

        -- lsp
        --[
        -- use {
        --     "jose-elias-alvarez/null-ls.nvim",
        --     requires = { { 'nvim-lua/plenary.nvim' } }
        -- }
        use { 'onsails/lspkind-nvim' }

        use { 'MunifTanjim/prettier.nvim' }
        use { 'MunifTanjim/eslint.nvim' }
        use { 'neovim/nvim-lspconfig' }
        use { 'williamboman/mason.nvim', run = function() pcall(vim.cmd, 'MasonUpdate') end }
        use { 'williamboman/mason-lspconfig.nvim' }

        -- Autocompletion
        use { 'hrsh7th/nvim-cmp' }
        use { 'hrsh7th/cmp-nvim-lsp' }
        use { 'hrsh7th/cmp-buffer' }
        use { 'L3MON4D3/LuaSnip' }

        -- misc.
        use {
            "windwp/nvim-autopairs",
            config = function() require("nvim-autopairs").setup {} end
        }
        use { "windwp/nvim-ts-autotag" }
        use { "github/copilot.vim"}
    end)
