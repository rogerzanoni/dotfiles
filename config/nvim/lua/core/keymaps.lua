local map = require("helpers.keys").map

-- Blazingly fast way out of insert mode
map("i", "jk", "<esc>")

-- Quick access to some common actions
map("n", "<leader>fw", "<cmd>w<cr>", "Write")
map("n", "<leader>fa", "<cmd>wa<cr>", "Write all")
map("n", "<leader>qq", "<cmd>q<cr>", "Quit")
map("n", "<leader>qa", "<cmd>qa!<cr>", "Quit all")
map("n", "<leader>dw", "<cmd>close<cr>", "Window")

-- Diagnostic keymaps
map('n', 'gx', vim.diagnostic.open_float, "Show diagnostics under cursor")

-- Easier access to beginning and end of lines
map("n", "<M-h>", "^", "Go to beginning of line")
map("n", "<M-l>", "$", "Go to end of line")

-- Better window navigation
map("n", "<C-h>", "<C-w><C-h>", "Navigate windows to the left")
map("n", "<C-j>", "<C-w><C-j>", "Navigate windows down")
map("n", "<C-k>", "<C-w><C-k>", "Navigate windows up")
map("n", "<C-l>", "<C-w><C-l>", "Navigate windows to the right")

-- Move with shift-arrows
map("n", "<C-S-Left>", "<C-w><S-h>", "Move window to the left")
map("n", "<C-S-Down>", "<C-w><S-j>", "Move window down")
map("n", "<C-S-Up>", "<C-w><S-k>", "Move window up")
map("n", "<C-S-Right>", "<C-w><S-l>", "Move window to the right")

-- Resize with arrows
map("n", "<C-Up>", ":resize +2<CR>")
map("n", "<C-Down>", ":resize -2<CR>")
map("n", "<C-Left>", ":vertical resize +2<CR>")
map("n", "<C-Right>", ":vertical resize -2<CR>")

-- Deleting buffers
local buffers = require("helpers.buffers")
map("n", "<leader>db", buffers.delete_this, "Current buffer")
map("n", "<leader>do", buffers.delete_others, "Other buffers")
map("n", "<leader>da", buffers.delete_all, "All buffers")

-- splits
map('n', '<leader>j', '<c-w>s', "Vertical split")
map('n', '<leader>v', '<c-w>v', "Horizontal split")
map('n', '<leader>c', '<c-w>c', "Close current window")
map('n', '<leader>o', '<c-w>o', "Close other windows")

-- remaps for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Navigate buffers
map("n", "<S-l>", ":BufferNext<CR>")
map("n", "<S-h>", ":BufferPrevious<CR>")
map("n", "<S-x>", ":BufferClose<CR>")
map("n", "<leader>b", ":BufferPick<CR>")

-- Stay in indent mode
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Switch between light and dark modes
map("n", "<leader>ut", function()
  if vim.o.background == "dark" then
    vim.o.background = "light"
  else
    vim.o.background = "dark"
  end
end, "Toggle between light and dark themes")

-- Clear after search
map("n", "<leader>ur", "<cmd>nohl<cr>", "Clear highlights")

-- restore the session for the current directory
map("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], "Restore session for current directory")

-- restore the last session
map("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]], "Restore last session")

-- stop Persistence => session won't be saved on exit
map("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], "Stop recording the current session")
