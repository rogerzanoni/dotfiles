local map = vim.api.nvim_set_keymap

-- sane movement on wrapped lines
map('n', 'j', 'gj', { noremap = true })
map('n', 'k', 'gk', { noremap = true })

-- splits
map('n', '<leader>b', '<c-w>s', { noremap = true }) -- horizontal split
map('n', '<leader>v', '<c-w>v', { noremap = true }) -- vertical split
map('n', '<leader>c', '<c-w>c', { noremap = true }) -- close split
map('n', '<leader>o', '<c-w>o', { noremap = true }) -- close all except the current split

-- fast movement around splits with arrow keys
map('', '<up>', '<c-w>k', { noremap = true })
map('', '<down>', '<c-w>j', { noremap = true })
map('', '<left>', '<c-w>h', { noremap = true })
map('', '<right>', '<c-w>l', { noremap = true })

-- search
map('n', '<leader>/', ':nohlsearch<CR>', { noremap = true, silent = true }) -- clear search results

-- visual
map('v', '<', '<gv', { noremap = true, silent = true }) -- keep visual selection after shifting left
map('v', '>', '>gv', { noremap = true, silent = true }) -- keep visual selection after shifting right

-- buffers
map('n', '<A-Left>', ':bp<CR>', { noremap = true, silent = true }) -- previous buffer
map('n', '<A-Right>', ':bn<CR>', { noremap = true, silent = true }) -- next buffer

-- moving lines up/down

map('n', '<S-Up>', ':m .-2<CR>==', { noremap = true, silent = true })
map('n', '<S-Down>', ':m .+1<CR>==', { noremap = true, silent = true })

map('i', '<S-Up>', '<Esc>:m .-2<CR>==gi', { noremap = true, silent = true })
map('i', '<S-Down>', '<Esc>:m .+1<CR>==gi', { noremap = true, silent = true })

map('v', '<S-Up>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
map('v', '<S-Down>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
