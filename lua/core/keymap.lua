local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Map Alt + i to toggle between normal and insert mode
vim.api.nvim_set_keymap('i', '<M-i>', '<Esc>', { noremap = true, silent = true })  -- Insert to Normal
vim.api.nvim_set_keymap('n', '<leader>h', ':nohlsearch<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<M-q>", ":bprevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<M-w>", ":bnext<CR>", { noremap = true, silent = true })
