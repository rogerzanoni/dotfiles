local cmd = vim.cmd
local map = vim.api.nvim_set_keymap

-- add cc/hpp files to the list of files that fswitch handles
cmd 'au! BufEnter *.cpp,*.cc,*.c let b:fswitchdst = "h,hpp"    | let b:fswitchlocs = "reg:/src/include/,../include,./"'
cmd 'au! BufEnter *.h,*.hpp      let b:fswitchdst = "cpp,cc,c" | let b:fswitchlocs = "reg:/include/src/,../src,./"'

map('n', '<leader>i', ':FSHere<CR>', { noremap = true, silent = true })
