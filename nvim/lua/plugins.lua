return require("packer").startup(function(use)
  -- Package Manager 
  use {'wbthomason/packer.nvim'}

  -- LSP
  use {'neovim/nvim-lspconfig',
  requires = {
    -- Automatically install LSP to stdpath for nvim
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    -- Useful status updates for LSP
    'j-hui/fidget.nvim'
  }
}

-- Auto Complete
use {'hrsh7th/nvim-cmp',
requires = {
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
}
  }

  -- Snippets
  use {'L3MON4D3/LuaSnip',
  afer = 'nvim-cmp',
  require = { 
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets',
  }
}

-- Treesitter
use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
use {'nvim-treesitter/nvim-treesitter-textobjects',
after = 'nvim-treesitter',
  }

  -- Format
  use 'numToStr/Comment.nvim'
  use 'sbdchd/neoformat'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag' 
  use 'tpope/vim-sleuth'
  use "lukas-reineke/indent-blankline.nvim"


  --  Finder (files, lsp, etc)
  use {'nvim-telescope/telescope.nvim', 
  branch = '0.1.x',
  requires = { 'nvim-lua/plenary.nvim' }
}
use 'nvim-telescope/telescope-file-browser.nvim'
use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }

--git
use 'lewis6991/gitsigns.nvim'
use 'tpope/vim-fugitive'
use 'tpope/vim-rhubarb'

-- Appearance
use 'nvim-tree/nvim-tree.lua'
use 'sainnhe/everforest'
use 'catppuccin/nvim'
use 'nvim-tree/nvim-web-devicons'
use 'nvim-lualine/lualine.nvim' 
use 'onsails/lspkind-nvim' --pictograms in suggestion
use 'doums/darcula'

-- Add custom plugins to packer from ~/.config/nvim/lua/custom/plugins.lua
local has_plugins, plugins = pcall(require, 'custom.plugins')
if has_plugins then
  plugins(use)
end

if is_bootstrap then
  require('packer').sync()
end
end)
