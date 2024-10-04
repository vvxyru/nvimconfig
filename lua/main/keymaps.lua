local map = vim.keymap.set

--[[
potential mapping conflictions:
autopairs, look github
--]]

-- set leader
vim.g.mapleader = " "

-- insert mode esc
map("i", "jj", "<esc>")

-- line movement
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi")
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi")

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "J", "mzJ`z")

-- line indenting
map("v", "<tab>", ">gv")
map("v", "<S-tab>", "<gv")

map("n", "<tab>", ">>")
map("n", "<S-tab>", "<<")

-- cursor movement
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

map("n", "H", "^")
map("n", "L", "$")

-- goat
map("n", "<leader>pv", "<cmd>Ex<cr>")

-- cursor centering
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- search
map("n", "<leader><cr>", "<cmd>nohl<cr>")

-- quick commenting
map("n", "<leader>;", "gcc", { remap = true })
map("v", "<leader>;", "gc", { remap = true })

-- copy and paste mappings
map("n", "<leader>ya", "<cmd>%y+<cr>")

map("x", "<leader>pd", [["_dP]])
map({ "n", "v" }, "<leader>d", [["_d]])

-- window movement/creation
map("n", "<C-h>", "<C-w>h", { remap = true })
map("n", "<C-j>", "<C-w>j", { remap = true })
map("n", "<C-k>", "<C-w>k", { remap = true })
map("n", "<C-l>", "<C-w>l", { remap = true })

map("n", "<leader>nv", "<C-w>v")
map("n", "<leader>ns", "<C-w>s")

map("n", "<C-Up>", "<cmd>resize +2<cr>")
map("n", "<C-Down>", "<cmd>resize -2<cr>")
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>")
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>")

-- file mappings
map("n", "<leader>w", "<cmd>w!<cr>", { remap = true })
map("n", "<leader>q", "<cmd>q<cr>")
map("n", "<leader>Q", "<cmd>q!<cr>")
map("n", "<leader>so", "<cmd>so<cr>", { remap = true })

-- lazy
-- map("n", "<leader>ll", "<cmd>Lazy<cr>")
