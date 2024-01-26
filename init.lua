-- Must happen before plugins otherwise they use the wrong leaders
vim.g.mapleader = " "
vim.g.maplocalleader = " "

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
        {
            "GusJelly/nvim-minibar",
            opts = {}
        },
        {
            "GusJelly/transparent.nvim",
        },
    },

    -- Tpope amazing plugins
    {
        "tpope/vim-fugitive",
        "tpope/vim-rhubarb",
        "tpope/vim-surround",
        "tpope/vim-sleuth"
    },

    -- Must-have plugins
    {
        {
            "stevearc/oil.nvim",
            config = function()
                require('oil').setup()
            end
        },
        {
            "windwp/nvim-autopairs",
            opts = {}
        },
        -- Harpoon
        {
            "ThePrimeagen/harpoon",
            dependencies = { "nvim-lua/plenary.nvim" },
            branch = "harpoon2",
            config = function()
                local harpoon = require("harpoon")

                harpoon:setup()

                vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end)
                vim.keymap.set("n", "<leader>hg", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

                vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
                vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
                vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
                vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)
            end
        },
        -- Vimwiki
        {
            "vimwiki/vimwiki",
            init = function()
                -- Vimwiki configuration
                vim.cmd([[
                    set nocompatible
                    filetype plugin on
                    syntax on

                    let g:vimwiki_list = [{'path': '~/vimwiki/',
                                            \ 'syntax': 'markdown', 'ext': 'md'}]
                ]])
            end
        },
    },

    -- Colorschemes
    {
        "rose-pine/neovim",
        "projekt0n/github-nvim-theme",
    },

    -- Fuzzy finding
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
            vim.keymap.set('n', '<leader>sg', builtin.live_grep, {})
            vim.keymap.set('n', '<leader>sb', builtin.buffers, {})
            vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})
        end
    },

    -- Treesitter and lsp plugins
    -- The configuration is done in different files
    {
        -- Treesitter
        { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
        -- Language server and completion
        "folke/neodev.nvim",
        "neovim/nvim-lspconfig",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
        -- For luasnip users.
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
    },

    -- Vimtex
    {
        'lervag/vimtex',
        config = function()
            vim.cmd([[
                " This is necessary for VimTeX to load properly. The "indent" is optional.
                " Note that most plugin managers will do this automatically.
                filetype plugin indent on

                " This enables Vim's and neovim's syntax-related features. Without this, some
                " VimTeX features will not work (see ":help vimtex-requirements" for more
                " info).
                syntax enable
            ]])
        end
    },
})


-- Plugin configuration:
require("lsp")
require("treesitter")

-- custom lua code and files to load:
require("remaps")
require("defaults")

-- Colorscheme
vim.cmd([[
    colorscheme github_light_default
    set background=light
    lua ColorMyPencils()
]])
