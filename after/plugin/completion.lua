local cmp = require("cmp")

cmp.setup({
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp" },  -- LSP suggestions
        { name = "buffer" },    -- Suggestions from open buffers
        { name = "path" },      -- File path suggestions
        { name = "luasnip" },   -- Snippets
    }),
    formatting = {
        format = function(entry, vim_item)
            -- Show icons in completion menu
            vim_item.kind = ({
                Text = "", Method = "", Function = "", Constructor = "",
                Field = "", Variable = "", Class = "", Interface = "",
                Module = "", Property = "", Unit = "", Value = "",
                Enum = "", Keyword = "", Snippet = "", Color = "",
                File = "", Reference = "", Folder = "", EnumMember = "",
                Constant = "", Struct = "", Event = "", Operator = "",
                TypeParameter = ""
            })[vim_item.kind] or vim_item.kind
            return vim_item
        end,
    },
})
