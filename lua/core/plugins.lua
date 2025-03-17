local fn = vim.fn

-- Automatically install packer if not already installed
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print("Installing packer... Restart Neovim after installation.")
end

-- Reload Neovim whenever plugins.lua is saved
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use protected call to avoid errors on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then return end

-- Configure Packer to use a popup window for its interface
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "single" })
    end,
  },
})

-- Define your plugins here
return packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer manages itself

  -- Add other plugins here (example below)
  use 'nvim-lua/plenary.nvim' -- Useful Lua functions for plugins
  use "tpope/vim-fugitive"
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.8',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
      "rose-pine/neovim",
      as = "rose-pine",
      config = function()
          require("rose-pine").setup({
              disable_italics = true,  -- Disable italics if needed
              disable_background = true, -- Make background transparent
          })
          vim.cmd("colorscheme rose-pine")
      end,
  })
  use('nvim-treesitter/nvim-treesitter', {run=':TSUpdate'})
    -- Auto-sync after cloning packer.nvim
    if PACKER_BOOTSTRAP then
        require('packer').sync()
    end
end)
