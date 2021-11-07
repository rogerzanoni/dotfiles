local g = vim.g
local map = vim.api.nvim_set_keymap

g.ackprg = 'ag --vimgrep'

map('n', '<leader>s', ':Ack!<Space>', { noremap = true })
