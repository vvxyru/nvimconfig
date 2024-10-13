local map = vim.keymap.set

-- Set leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Insert mode ESC
map("i", "jj", "<esc>", { desc = "Exit Insert Mode" })

-- Line movement
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Line Down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Line Up" })

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Line Down (Visual)" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Line Up (Visual)" })

map("n", "J", "mzJ`z", { desc = "Join Lines" })

-- Line indenting
map("v", "<tab>", ">gv", { desc = "Indent Right" })
map("v", "<S-tab>", "<gv", { desc = "Indent Left" })

map("n", "<tab>", ">>", { desc = "Indent Line Right" })
map("n", "<S-tab>", "<<", { desc = "Indent Line Left" })

-- Cursor movement
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true, desc = "Move Down (Soft Line Wrap)" })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true, desc = "Move Up (Soft Line Wrap)" })

map("n", "H", "^", { desc = "Move to Start of Line" })
map("n", "L", "$", { desc = "Move to End of Line" })

-- Explorer (netrw)
map("n", "<leader>pv", "<cmd>Ex<cr>", { desc = "Open Netrw (Explorer)" })

-- Cursor centering
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll Down (Centered)" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll Up (Centered)" })

map("n", "n", "nzzzv", { desc = "Next Search Result (Centered)" })
map("n", "N", "Nzzzv", { desc = "Previous Search Result (Centered)" })

-- Search
map("n", "<leader><cr>", "<cmd>nohl<cr>", { desc = "Clear Search Highlights" })

-- Quick commenting
map("n", "<leader>;", "gcc", { remap = true, desc = "Comment Line" })
map("v", "<leader>;", "gc", { remap = true, desc = "Comment Selection" })

-- Copy and paste mappings
map("n", "<leader>ya", "<cmd>%y+<cr>", { desc = "Copy Entire File to Clipboard" })

map("x", "<leader>pd", [["_dP]], { desc = "Paste Without Overwriting Clipboard" })
map({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete Without Overwriting Clipboard" })

-- Window movement/creation
map("n", "<C-h>", "<C-w>h", { remap = true, desc = "Move Left" })
map("n", "<C-j>", "<C-w>j", { remap = true, desc = "Move Down" })
map("n", "<C-k>", "<C-w>k", { remap = true, desc = "Move Up" })
map("n", "<C-l>", "<C-w>l", { remap = true, desc = "Move Right" })

map("n", "<leader>nv", "<C-w>v", { desc = "Vertical Split" })
map("n", "<leader>ns", "<C-w>s", { desc = "Horizontal Split" })

map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Width" })

-- File mappings
map("n", "<leader>w", "<cmd>w!<cr>", { remap = true, desc = "Save File" })
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
map("n", "<leader>Q", "<cmd>q!<cr>", { desc = "Quit Without Saving" })
map("n", "<leader>so", "<cmd>so<cr>", { remap = true, desc = "Source File" })

-- Quick switch to config
map("n", "<leader>oo", "<cmd>:tcd ~/.config/nvim<cr>", { desc = "Open NVim Config Directory" })
