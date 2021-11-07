local map = vim.api.nvim_set_keymap

map('n', ']g', ':GitGutterNextHunk<CR>', { noremap = true, silent = true })
map('n', '[g', ':GitGutterPrevHunk<CR>', { noremap = true, silent = true })
