return {
    "nvim-treesitter/nvim-treesitter",
    event = "BufRead",
    config = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
}

