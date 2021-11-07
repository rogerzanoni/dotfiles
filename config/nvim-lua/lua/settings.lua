-- aliases
local cmd = vim.cmd -- exec vim commands
local g   = vim.g   -- global vars
local opt = vim.opt -- global/buffer/windows-scoped options

-- general settings
g.mapleader    = ' '
opt.clipboard  = 'unnamedplus' -- use system clipboard
g.noshowmode   = true          -- let lightline display mode info
opt.cursorline = true          -- display underline on cursor line
opt.ignorecase = true          -- ignore case when searching
opt.smartcase  = true          -- ignore lowercase for the pattern
opt.wrap       = true
opt.hidden     = true          -- don't unload buffer when it is abandoned
opt.number     = true          -- show line numbers
opt.undolevels = 1000
opt.so         = 7             -- keep 7 lines above/below when moving vertically
opt.hlsearch   = true          -- highlight search results
opt.incsearch  = true          -- make search work incrementally
opt.mouse      = 'a'           -- enable mouse

-- no annoying sound on errors
g.noerrorbells = true
g.novisualbell = true
g.t_vb = ''

-- tabs and indenting
opt.expandtab = true   -- spaces instead of tabs
opt.shiftwidth = 4
opt.tabstop = 4
opt.autoindent  = true -- autoindent new lines
opt.smartindent = true -- auto insert indent levels

-- encoding / file formats
opt.encoding = 'UTF-8'
opt.ffs      = 'unix,dos,mac' -- preferred file formats

-- turn backups off
g.nobackup   = true
g.nowb       = true
g.noswapfile = true
opt.swapfile = false
