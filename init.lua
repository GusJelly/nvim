-- Must happen before plugins otherwise they use the wrong leaders
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.o.termguicolors = true

-- Installing package manager lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Installing plugins
require("lazy").setup({
  -- Tpope amazing plugins
  {
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb',
    'tpope/vim-surround',
    'tpope/vim-sleuth'
  },

  -- Must-have plugins
  {
    {
      'stevearc/oil.nvim', 
      config = function()
        require('oil').setup()
      end
    },
    {
      'windwp/nvim-autopairs',
      opts = {}
    }
  },

  -- Colorscheme
  {
    'rose-pine/neovim',
    opts = {},
    config = function()
      vim.cmd([[colorscheme rose-pine]])
    end
  }
})

-- My custom lua code and files to load:
require('remaps')
require('defaults')
