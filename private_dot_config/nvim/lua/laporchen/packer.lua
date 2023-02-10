-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "catppuccin/nvim", as = "catppuccin" }
  use {'folke/tokyonight.nvim', { branch = 'main' }}

  use ('nvim-treesitter/nvim-treesitter',  {run = ':TSUpdate' })
  use {'sbdchd/neoformat'}
  use {'lewis6991/gitsigns.nvim'}
  use {'neoclide/coc.nvim', branch = 'release'}
  use {'leafgarland/typescript-vim'}
  use {'peitalin/vim-jsx-typescript'}
  use {'nvim-treesitter/playground'}

end)
