local ts = require 'nvim-treesitter.configs'

ts.setup {ensure_installed = {'python', 'cpp'}, highlight = {enable = true}}
