local opt = vim.opt

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

opt.cursorline = true

opt.number = true
opt.relativenumber = true

-- Function to enable relative number in normal mode and disable in insert mode
local function set_numbering()
    vim.api.nvim_create_autocmd({ "InsertEnter" }, {
        pattern = "*",
        callback = function()
            vim.opt.relativenumber = false
            vim.opt.number = true
        end
    })

    vim.api.nvim_create_autocmd({ "InsertLeave" }, {
        pattern = "*",
        callback = function()
            vim.opt.relativenumber = true
            vim.opt.number = true
        end
    })
end

set_numbering()

opt.signcolumn = "auto"

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.termguicolors = true

opt.hlsearch = true
opt.incsearch = true

opt.scrolloff = 7

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.completeopt = "menu,menuone,noselect"

opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"

opt.updatetime = 150

