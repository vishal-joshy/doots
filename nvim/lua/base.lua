  -- line number
  vim.opt.number = true
  vim.opt.relativenumber = true

  -- mouse
  vim.opt.mouse= 'a'

  -- search settings
  vim.opt.ignorecase = true
  vim.opt.smartcase = true
  vim.opt.hlsearch = false

  -- tabs & indentation
  vim.opt.tabstop = 2
  vim.opt.shiftwidth = 2
  vim.opt.expandtab = true
  vim.opt.autoindent = true
  vim.opt.breakindent = true
  vim.opt.wrap = true

  -- cursor line
  vim.opt.cursorline = true

  -- appearance
  vim.opt.termguicolors = true

  -- completion
  vim.opt.completeopt = 'menuone,noselect'

  -- Decrease update time
  vim.o.updatetime = 250
  vim.wo.signcolumn = 'yes'

  -- Save undo history
  vim.o.undofile = true

  -- use system clipboard
  vim.opt.clipboard:append("unnamedplus")

  vim.opt.showmatch = true
  vim.opt.wildmenu = true
  vim.opt.wildmode = { "longest:full", "full" } -- on first tab open wildmenu, on next move through the menu

  vim.opt.completeopt = { "menu", "menuone", "noselect" } 
  vim.opt.list = false
  vim.opt.listchars = { trail = "␠" } -- indent guide lines
   vim.opt.listchars = { tab = " ", space = "·", eol = "", trail = "␠" } 


