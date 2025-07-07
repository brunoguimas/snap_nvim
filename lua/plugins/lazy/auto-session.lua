return {
        'rmagatti/auto-session',
        lazy = false,

        opts = {
                suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
                auto_restore = false,
                auto_session_ignore = { "neo-tree", "neo-tree-popup", "fugitive", "gitcommit" }
        }
}
