return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    -- ft = "norg",
    event = "VeryLazy",
    version = "*",
    config = function()
        local map = vim.keymap.set
        local opt = vim.opt

        -- options
        opt.conceallevel = 3

        -- keymaps
        map("n", "<cr>", "<Plug>(neorg.esupports.hop.hop-link)", { noremap = true, silent = true })

        map("n", "<leader>or", "<cmd>Neorg toggle-concealer<cr>", { silent = true })

        require("neorg").setup({
            load = {
                ["core.defaults"] = {},
                ["core.concealer"] = {
                    config = {
                        icon_preset = "diamond",
                    },
                },
                ["core.dirman"] = {
                    config = {
                        workspaces = {
                            notes = "~/notes",
                            school = "~/notes/school",
                        },
                        default_workspace = "notes",
                        index = "index.norg",
                    },
                },
                ["core.keybinds"] = {
                    config = {
                        default_keybinds = false,
                    },
                },
                ["core.completion"] = {
                    config = {
                        engine = "nvim-cmp",
                    },
                },
                ["core.integrations.nvim-cmp"] = {},
                ["core.summary"] = {},
                ["core.esupports.metagen"] = {},
                ["core.ui.calendar"] = {},
            },
        })
    end,
}
