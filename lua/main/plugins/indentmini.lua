return {
    "nvimdev/indentmini.nvim",
    event = "BufEnter",
    config = function()
        require("indentmini").setup({
            vim.cmd.highlight("IndentLine guifg=#54546D"),
            vim.cmd.highlight("IndentLineCurrent guifg=#777777"),
        })
    end,
}
