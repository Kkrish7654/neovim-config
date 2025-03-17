require("core.mappings")
require("core.plugins")
require("core.keymap")
require("core.telescope")
require("core.lsp")
vim.opt.number = true
vim.opt.relativenumber = true

-- Tab Settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false
vim.opt.guicursor = "n-v-c:block-blinkwait700-blinkoff400-blinkon250,i-ci-ve:block"
-- Search Settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- UI Enhancements
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.scrolloff = 8

vim.o.background = "dark" -- or "light" for light mode
