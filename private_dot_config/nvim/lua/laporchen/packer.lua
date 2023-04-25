-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.1',
            -- or                            , branch = '0.1.x',
            requires = { { 'nvim-lua/plenary.nvim' } }
        }

        use { "catppuccin/nvim", as = "catppuccin" }
        use { 'folke/tokyonight.nvim', { branch = 'main' } }

        use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
        use { 'sbdchd/neoformat' }
        use { 'lewis6991/gitsigns.nvim' }
        use { 'tveskag/nvim-blame-line' }
        -- use {'neoclide/coc.nvim', branch = 'release'}
        use { 'leafgarland/typescript-vim' }
        use { 'peitalin/vim-jsx-typescript' }
        use { 'nvim-treesitter/playground' }
        use { 'ThePrimeagen/harpoon' }
        use { "ellisonleao/gruvbox.nvim" }
        use {
            "jose-elias-alvarez/null-ls.nvim",
            requires = { { 'nvim-lua/plenary.nvim' } }
        }
        use { 'MunifTanjim/prettier.nvim' }
        use { 'MunifTanjim/eslint.nvim' }
        use {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v2.x',
            requires = {
                -- LSP Support
                { 'neovim/nvim-lspconfig' }, -- Required
                { -- Optional
                    'williamboman/mason.nvim',
                    run = function()
                        pcall(vim.cmd, 'MasonUpdate')
                    end,
                },
                { 'williamboman/mason-lspconfig.nvim' }, -- Optional
                -- Autocompletion
                { 'hrsh7th/nvim-cmp' }, -- Required
                { 'hrsh7th/cmp-nvim-lsp' }, -- Required
                { 'L3MON4D3/LuaSnip' }, -- Required
            }
        }
        use {
            "windwp/nvim-autopairs",
            config = function() require("nvim-autopairs").setup {} end
        }
        use { "windwp/nvim-ts-autotag" }
    end)
