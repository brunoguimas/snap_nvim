return {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" },
        module = "telescope",

        config = function()
                require('telescope').setup({})

                local builtin = require('telescope.builtin')

                vim.keymap.set('n', '<leader>pws', function()
                        local word = vim.fn.expand("<cword>")
                        builtin.grep_string({ search = word })
                end)
                vim.keymap.set('n', '<leader>pWs', function()
                        local word = vim.fn.expand("<cWORD>")
                        builtin.grep_string({ search = word })
                end)
        end
}
