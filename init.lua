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
  -- My GusJelly plugins
  {
    'GusJelly/nvim-minibar',
    opts = {}
  },

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
  },

  -- Treesitter and lsp plugins
  -- The configuration is done in different files
  {
    -- Treesitter
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    -- Language server and completion
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    -- For luasnip users.
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',

  },
})

-- My custom lua code and files to load:
require('remaps')
require('defaults')
