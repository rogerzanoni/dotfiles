local map = vim.api.nvim_set_keymap
local g = vim.g

-- open the fzf window in the current window
g.fzf_layout = {
  window = 'enew'
}

g.fzf_preview_window = {
  'right:50%:hidden', 'ctrl-/'
}

g.fzf_buffers_jump = 1 -- jump to existing window if possible

map('n', '<leader>f', ':Files<CR>', { noremap = true, silent = true }) -- fzf file search
map('n', '<leader>b', ':Buffers<CR>', { noremap = true, silent = true }) -- fzf buffer search
map('n', '<leader>h', ':History<CR>', { noremap = true, silent = true }) -- fzf history search
map('n', '<leader>l', ':Lines<CR>', { noremap = true, silent = true }) -- fzf lines in open buffers search
