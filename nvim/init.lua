
if vim.g.vscode then
  -- VSCode extension
  vim.opt.hlsearch = false
  -- backspace 
  vim.opt.backspace = "indent,eol,start"

  -- use system clipboard
  vim.opt.clipboard:append("unnamedplus")

  -- include "-" as keyword
  vim.opt.iskeyword:append("-")
else
  require('base')
  require('keymap')
  require('plugins')
end



