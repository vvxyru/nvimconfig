local themes = {
    "kanagawa",
    "kanagawa-paper",
    "lackluster",
    "monotone",
    "vague",
    "yorumi",
    "zenwritten",
}

-- indentline autohl
local function set_indentline_highlights()
    vim.cmd.highlight("IndentLine guifg=#54546D")
    vim.cmd.highlight("IndentLineCurrent guifg=#777777")
    if vim.g.colors_name == "zenwritten" then
        vim.g.zenbones_dark = true
    end
end

vim.api.nvim_create_autocmd("ColorScheme", {
    callback = set_indentline_highlights,
})

return {
    {
        "rebelot/kanagawa.nvim",
        lazy = true,
        priority = 1000,
        config = function()
            require("kanagawa").setup({
                -- transparent = true,
                transparent = false,
            })
        end,
    },

    {
        "vague2k/vague.nvim",
        lazy = true,
        priority = 1000,
        config = function()
            require("vague").setup({
                -- transparent = true,
                transparent = false,
            })
        end,
    },

    {
        "yorumicolors/yorumi.nvim",
        lazy = true,
        priority = 1000,
        -- no config bruh
    },

    {
        "slugbyte/lackluster.nvim",
        lazy = true,
        priority = 1000,
        config = function()
            local lackluster = require("lackluster")

            -- vim.cmd.colorscheme("lackluster")
            vim.cmd.colorscheme("lackluster-hack") -- my favorite
            -- vim.cmd.colorscheme("lackluster-mint")

            lackluster.setup({
                tweak_background = {
                    normal = "#080c14",
                    -- normal = "none",
                },
            })
        end,
    },

    {
        "sho-87/kanagawa-paper.nvim",
        lazy = true,
        priority = 1000,
        config = function()
            require("kanagawa-paper").setup({
                -- transparent = true,
                transparent = false,
            })
        end,
    },

    {
        "Lokaltog/vim-monotone",
        lazy = true,
        priority = 1000,
    },

    {
        "zenbones-theme/zenbones.nvim",
        dependencies = "rktjmp/lush.nvim",
        lazy = true,
        priority = 1000,
        config = function()
            vim.g.zenbones_dark = true
        end,
    },

    {
        "zaldih/themery.nvim",
        lazy = false,
        config = function()
            local map = vim.keymap.set
            map("n", "<leader>pT", "<cmd>Themery<cr>")

            require("themery").setup({
                themes = themes,
                livePreview = true,
            })
        end,
    },
}
