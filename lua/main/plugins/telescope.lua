return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local builtin = require("telescope.builtin")
        local action = require("telescope.actions")
        local map = vim.keymap.set

        map("n", "<leader>pf", builtin.find_files, {})

        require("telescope").setup({
            mappings = {
                i = {
                    ["<C-j>"] =  action.move_selection_next,
                    ["<C-k>"] =  action.move_selection_previous,
                },
                n = {
                    ["<C-j>"] =  action.move_selection_next,
                    ["<C-k>"] =  action.move_selection_previous,
                },
            }
        })
    end,
}
