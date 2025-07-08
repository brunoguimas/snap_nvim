return {
        "neovim/nvim-lspconfig",
        version = "*", -- remove after they fix ESLint
        dependencies = {
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/nvim-cmp",
        },

        config = function()
                vim.api.nvim_create_autocmd("BufWritePre", {
                        pattern = "*.rs",
                        callback = function()
                                vim.lsp.buf.format({ async = false })
                        end,
                })

                local lspconfig_defaults = require('lspconfig').util.default_config
                lspconfig_defaults.capabilities = vim.tbl_deep_extend(
                        'force',
                        lspconfig_defaults.capabilities,
                        require('cmp_nvim_lsp').default_capabilities()
                )

                -----------
                -- SERVERS
                require'lspconfig'.html.setup{}
                require'lspconfig'.cssls.setup{}
                require'lspconfig'.jsonls.setup{}
                require'lspconfig'.tailwindcss.setup{}
                require'lspconfig'.ts_ls.setup{}
                require'lspconfig'.eslint.setup{
                        on_attach = function(client, bufnr)
                                vim.api.nvim_create_autocmd("BufWritePre", {
                                        buffer = bufnr,
                                        command = "EslintFixAll",
                                })
                        end
                }
                -----------

                local cmp = require('cmp')

                cmp.setup({
                        sources = {
                                {name = "nvim_lsp"},
                                {name = "luasnip"},
                        },
                        snippet = {
                                expand = function(args)
                                        require('luasnip').lsp_expand(args.body)
                                        -- vim.snippet.expand(args.body)
                                end,
                        },
                        preselect = 'item',
                        completion = {
                                completeopt = 'menu,menuone,noinsert'
                        },
                        mapping = cmp.mapping.preset.insert({
                                ['<CR>'] = cmp.mapping.confirm({select = false}),
                                -- Jump to the next snippet placeholder
                                ['<C-f>'] = cmp.mapping(function(fallback)
                                        local luasnip = require('luasnip')
                                        if luasnip.locally_jumpable(1) then
                                                luasnip.jump(1)
                                        else
                                                fallback()
                                        end
                                end, {'i', 's'}),
                                -- Jump to the previous snippet placeholder
                                ['<C-b>'] = cmp.mapping(function(fallback)
                                        local luasnip = require('luasnip')
                                        if luasnip.locally_jumpable(-1) then
                                                luasnip.jump(-1)
                                        else
                                                fallback()
                                        end
                                end, {'i', 's'}),
                        }),
                })
        end
}
