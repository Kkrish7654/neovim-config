require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "html",
        "cssls",
        "jsonls",
        "pyright",
        "clangd",
        "gopls",
        "bashls",
    }
})
