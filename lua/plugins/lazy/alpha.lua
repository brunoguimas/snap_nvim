return {
        "goolord/alpha-nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
                local alpha = require("alpha")
                local dashboard = require("alpha.themes.dashboard")
                local cwd = vim.fn.getcwd()

                dashboard.section.buttons.val = {
                        dashboard.button("s", "  Restore Session", ":SessionRestore<CR>"),
                        dashboard.button('n', "  New File", ":ene <BAR> startinsert<CR>"),
                        dashboard.button('f', "󰈞  Find File", ":Telescope find_files<CR>"),
                        dashboard.button('r', "  Recent Files", ":Telescope oldfiles<CR>"),
                        dashboard.button('c', "  Config", ":Neotree right dir=~/.config/nvim<CR>"),
                        dashboard.button('q', "  Quit", ":qa<CR>"),
                }

                dashboard.section.footer.val = function()
                        return "  Welcome back, " .. vim.fn.expand("$USER") .. "!"
                end

                alpha.setup(dashboard.opts)
        end
}

