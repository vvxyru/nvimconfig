return {
    "echasnovski/mini.starter",
    event = "VimEnter", 
    config = function()
        local gtbeyes = table.concat({
            "⠀⠀⠀⣠⣤⡶⠶⠿⠷⠶⣶⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⢄⠀      ✦           ",
            "⣠⣴⠿⠋⠀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣾⠗⠋⠁⠃         ✧        ",
            "⠉⠀⢀⡠⣄⡀⠀⠀⣤⣤⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠟⠋⠁⠀⠀⠀⠀    ✧             ",
            "⠀⡰⢾⣿⣾⣿⠿⠿⢻⡿⢿⣿⡻⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣴⣆⠀           ✦      ",
            "⠀⡛⠛⣿⡇⠀⠀⢀⣿⣥⣿⣿⣷⡽⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⡿⣿⠿⠛⠀                ✧ ",
            "⠈⣽⣿⣧⢙⣶⣤⣸⡇⠘⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣽⣿⣷⣿⡀⠀⠀                  ",
            "⠀⠀⠙⠻⠟⢻⣿⣇⡳⣤⣈⢉⣡⢿⡆⠀⠀⠀⠀⠀⠀⠀⠀⢸⡏⠉⢳⣭⣵⣿⠁⠀⠀                  ",
            "⠀⠀⠀⠀⠀⠀⠈⠙⠛⠿⠿⠿⠷⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠸⠦⣤⣤⠴⠾⠃⠀⠀⠀                  ",
        }, "\n")

        local starter = require("mini.starter")
        starter.setup({
            header = gtbeyes,
            items = { name = "", action = "", section = "" },

            -- plugin stats
            vim.api.nvim_create_autocmd("User", {
                pattern = "LazyVimStarted",
                callback = function(ev)
                    local stats = require("lazy").stats()
                    local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
                    local pad_footer = string.rep(" ", 8)
                    starter.config.footer = pad_footer
                        .. "lazy.vim loaded "
                        .. stats.count
                        .. " plugins in "
                        .. ms
                        .. "ms"
                    if vim.bo[ev.buf].filetype == "ministarter" then
                        pcall(starter.refresh)
                    end
                end,
            }),
        })
    end,
}
