return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    -- ft = "norg",
    version = "*",
    config = true,
    opts = {
        load = {
            ["core.defaults"] = {},
            ["core.concealer"] = {},
            ["core.dirman"] = {
                config = {
                    workspaces = {
                        notes = "~/notes",
                    },
                    default_workspace = "notes",
                },
            },
        },
    },
}
