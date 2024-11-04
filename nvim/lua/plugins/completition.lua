
return {
    {
        'hrsh7th/nvim-cmp',
        config = function()
            local cmp = require'cmp'
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-e>'] = cmp.mapping.abort(),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                }, {
                        { name = 'buffer' },
                    }),
                window = {
                    completion = cmp.config.window.bordered({border = 'none'}),
                    documentation = cmp.config.window.bordered({border = 'none'}),
                },
                formatting = {
                    fields = { 'abbr', 'kind', 'menu' },
                    format = function(entry, vim_item)
                        return vim_item
                    end,
                }
            })
            vim.cmd([[ highlight! CmpBorder guifg=#ff0000 ]])
        end,
    },

    {
        'hrsh7th/cmp-nvim-lsp' 
    },
    { 
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require('lspconfig')
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            -- Rust
            lspconfig.rust_analyzer.setup {
                capabilities = capabilities,
                settings = {
                    ['rust-analyzer'] = {
                        checkOnSave = { command = "clippy" }
                    }
                }
            }
            -- C and C++
            lspconfig.clangd.setup {
                capabilities = capabilities,
            }
            -- Java
            lspconfig.jdtls.setup {
                capabilities = capabilities,
            }
            -- JavaScript and TypeScript
            lspconfig.tsserver.setup {
                capabilities = capabilities,
            }
            -- HTML
            lspconfig.html.setup {
                capabilities = capabilities,
            }
        end
    },
    {
        'L3MON4D3/LuaSnip',
        dependencies = { 'rafamadriz/friendly-snippets' },
        config = function()
            require('luasnip.loaders.from_vscode').lazy_load()
        end
    },
}

