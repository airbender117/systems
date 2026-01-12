-- Load packer (only needed if packer is opt)
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer manages itself
  use 'wbthomason/packer.nvim'
  use 'hrsh7th/nvim-cmp'
  use 'epwalsh/obsidian.nvim'
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}

  -- Required dependency
  use 'nvim-lua/plenary.nvim'
 

use 'rafamadriz/friendly-snippets' 
-- minimal blink.cmp for Packer
use {
  "saghen/blink.cmp",
  version = "1.*",                 -- use a stable release with prebuilt binaries
  dependencies = { "rafamadriz/friendly-snippets" },  -- optional snippet source
}

  -- Telescope (PINNED to stable release)
  use {
    'nvim-telescope/telescope.nvim',
    tag = '*',
  }
  -- lua/plugins/rose-pine.lua
  use({
	'rose-pine/neovim',
	name = "rose-pine",
	config = function()
		vim.cmd("colorscheme rose-pine")
	end
  })


  
  use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate' })
  use('theprimeagen/harpoon')
  use {
    'mbbill/undotree',
    config = function()
      -- Optional: map F5 to toggle Undotree
      vim.api.nvim_set_keymap('n', '<F5>', ':UndotreeToggle<CR>', { noremap = true, silent = true })
      -- Optional: persist undo history across sessions
      vim.o.undofile = true
    end
  }

  -- LSP installer
  use { 'williamboman/mason.nvim', config = function() require("mason").setup() end }
  use { 'williamboman/mason-lspconfig.nvim', config = function() require("mason-lspconfig").setup() end }

  -- Core LSP
  use { 'neovim/nvim-lspconfig' }

  -- Autocompletion

  -- Snippets
  use { 'L3MON4D3/LuaSnip' }


use {
  "folke/persistence.nvim",
  config = function()
    require("persistence").setup({
      dir = vim.fn.stdpath("state") .. "/sessions/",
      options = { "buffers", "curdir", "tabpages", "winsize" },
    })
  end
}
use{
  "Exafunction/codeium.vim",
  event = "InsertEnter",
}
end)

