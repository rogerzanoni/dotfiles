local opts = {
  shiftwidth = 2,
  tabstop = 2,
  softtabstop = 2,
  expandtab = true,
  breakindent = true,
  autoindent = true,
  smartindent = true,
  wrap = true,
  termguicolors = true,
  number = true,
  relativenumber = true,
  clipboard = "unnamedplus",
  undofile = true,
}

-- Set options from table
for opt, val in pairs(opts) do
  vim.o[opt] = val
end

-- Set other options
local colorscheme = require("helpers.colorscheme")
vim.cmd.colorscheme(colorscheme)
