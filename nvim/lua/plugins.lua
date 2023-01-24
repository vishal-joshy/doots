local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
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
  use 'MaxMEllon/vim-jsx-pretty'

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

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

require('config/common')
require('config/lsp-config')
require('config/theme-config')
require('config/completion-config')
require('config/format-config')
require('config/luasnip-config')
require('config/treesitter-config')
require('config/telecope-config')


