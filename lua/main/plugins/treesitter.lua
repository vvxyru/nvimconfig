return {
    "nvim-treesitter/nvim-treesitter",
    event = "BufRead",
    config = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "c",
                "lua",
                "vim",
                "vimdoc",
                "markdown",
            },
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        })
    end,
}
