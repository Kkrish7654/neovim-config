local lspconfig = require("lspconfig")
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "rust_analyzer", "html", "cssls", "jsonls", "pyright", "clangd", "gopls" },
    automatic_installation = true,
})

-- Auto-setup installed servers
require("mason-lspconfig").setup_handlers({
    function(server_name)
        lspconfig[server_name].setup({})
    end
})

-- LSP Keybindings
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })

