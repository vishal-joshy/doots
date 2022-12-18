local status, packer = pcall(require, "packer")


if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use {'wbthomason/packer.nvim'}

  use {'nvim-lualine/lualine.nvim'} -- Statusline
  require('lualine').setup({
    options={
      theme='everforest',
      icons_enabled = false,
      component_seperators = '|',
      section_seperators = '',
    },
  })
  use "lukas-reineke/indent-blankline.nvim"
  use {'L3MON4D3/LuaSnip'}
  use {'ThePrimeagen/harpoon'}
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope-fzf-native.nvim", { run = "make" })
	use("nvim-telescope/telescope.nvim")
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("nvim-treesitter/nvim-treesitter-textobjects")
	use("nvim-treesitter/playground")
	use("onsails/lspkind-nvim")
	use("saadparwaiz1/cmp_luasnip")
	use("sbdchd/neoformat")



  use 'onsails/lspkind-nvim' --pictograms in suggestion
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
	use("hrsh7th/cmp-path")
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use { "williamboman/mason.nvim" }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use {'sainnhe/everforest'}
  vim.cmd('colorscheme everforest')

  use({ "kyazdani42/nvim-tree.lua", requires = { "kyazdani42/nvim-web-devicons" } })
  use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })

  -- LSP
  use("neovim/nvim-lspconfig")
  use({ "glepnir/lspsaga.nvim", branch = "main" })
  -- Snippets
  use("rafamadriz/friendly-snippets")
  use("numToStr/Comment.nvim")

  --git
  use("lewis6991/gitsigns.nvim")
end)
