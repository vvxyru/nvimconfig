local map = vim.keymap.set

--[[
potential mapping conflictions:
autopairs, look github
--]]

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

map("i", "jj", "<esc>")

map("n", "<leader>pv", "<cmd>Ex<cr>")

map("n", "<leader>w", "<cmd>w!<cr>")
map("n", "<leader>q", "<cmd>q<cr>")
map("n", "<leader>Q", "<cmd>q!<cr>")
map("n", "<leader>so", "<cmd>so<cr>")

map("n", "<leader>ll", "<cmd>Lazy<cr>")

map("n", "H", "^")
map("n", "L", "$")
