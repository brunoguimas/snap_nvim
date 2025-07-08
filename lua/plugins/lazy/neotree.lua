return {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {
                "nvim-lua/plenary.nvim",
                "nvim-tree/nvim-web-devicons",
                "MunifTanjim/nui.nvim",
        },
        opts = {
                window = {
                        position = 'right'
                },
                filesystem = {
                        filtered_items = {
                                visible = false,
                                hide_dotfiles = true,
                                hide_gitignored = true,
                        },
                },
        },
}
