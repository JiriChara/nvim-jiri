local map = vim.keymap.set
local o = { noremap = true, silent = true }

-- Clear search highlights when pressing <Esc>
map("n", "<esc>", "<cmd>nohlsearch<cr>", vim.tbl_extend("force", o, { desc = "Clear search"}))

-- Navigate between split windows using Ctrl + h/j/k/l
map("n", "<C-h>", "<C-w>h", o)
map("n", "<C-j>", "<C-w>j", o)
map("n", "<C-k>", "<C-w>k", o)
map("n", "<C-l>", "<C-w>l", o)

-- Resize splits using Alt + Arrow keys
map("n", "<A-Left>", "<cmd>vertical resize -2<cr>", o)
map("n", "<A-Right>", "<cmd>vertical resize +2<cr>", o)
map("n", "<A-Up>", "<cmd>resize +1<cr>", o)
map("n", "<A-Down>", "<cmd>resize -1<cr>", o)
