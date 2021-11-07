local cmd = vim.cmd
local g   = vim.g
local opt = vim.opt


opt.termguicolors = true -- enable 24-bit RGB colors
opt.background    = 'dark'
cmd [[colorscheme blue-moon]]

require('plugins/lualine')
