  -- line number
  vim.opt.number = true
  vim.opt.relativenumber = true

  -- tabs & indentation
  vim.opt.tabstop = 2
  vim.opt.shiftwidth = 2
  vim.opt.expandtab = true
  vim.opt.autoindent = true

  -- line wrapping
  vim.opt.wrap = true
  vim.opt.breakindent = true

  -- search settings
  vim.opt.ignorecase = true
  vim.opt.smartcase = true
  vim.opt.hlsearch = false

  -- spellcheck
  vim.opt.spell = false

  -- cursor line
  vim.opt.cursorline = true

  -- appearance
  vim.opt.termguicolors = false

  -- backspace 
  vim.opt.backspace = "indent,eol,start"

  -- use system clipboard
  vim.opt.clipboard:append("unnamedplus")

  -- include "-" as keyword
  vim.opt.iskeyword:append("-")

  -- mouse
  vim.opt.mouse= 'a'

  -- handled by lualine 
  vim.opt.showmode = false

  vim.opt.showmatch = true
  vim.opt.wildmenu = true
  vim.opt.wildmode = { "longest:full", "full" } -- on first tab open wildmenu, on next move through the menu

  vim.opt.completeopt = { "menu", "menuone", "noselect" } 
  vim.opt.list = false
  vim.opt.listchars = { trail = "␠" } -- indent guide lines
  -- vim.opt.listchars = { tab = " ", space = "·", eol = "", trail = "␠" } 


