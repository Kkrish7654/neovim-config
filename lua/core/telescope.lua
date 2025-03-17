local telescope = require('telescope')

telescope.setup {
  defaults = {
    initial_mode = "normal",
    prompt_prefix = "> ",
    selection_caret = "> ",
    file_ignore_patterns = {"node_modules", ".git"},
    mappings = {
      i = {
        ["<C-n>"] = "move_selection_next",
        ["<C-p>"] = "move_selection_previous",
      },
    },
  },
}

-- Load extensions if needed
