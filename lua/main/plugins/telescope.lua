return {
    "nvim-telescope/telescope.nvim", 
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("telescope").setup({})

        local builtin = require("telescope.builtin")
        local map = vim.keymap.set
        map("n", "<leader>pf", builtin.find_files, {})

    end,
}
