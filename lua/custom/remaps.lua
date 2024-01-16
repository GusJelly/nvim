-- Custom keymaps for neovim
vim.keymap.set("n", "<leader>pv", "<cmd>:Oil<CR>")
vim.keymap.set("n", "<leader>lg", "<cmd>:LazyGit<CR>", { desc = 'spawn lazygit' })

-- Terminal mode keymaps
vim.keymap.set("t", "<C-n>", "<C-\\><C-n>") -- Makes is so that Ctrl + \ goes into normal mode when in :term mode

-- half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- BUFFERS
vim.keymap.set("n", "[b", "<cmd>:bprevious<CR>", { desc = 'previous buffer' })
vim.keymap.set("n", "]b", "<cmd>:bnext<CR>", { desc = 'next buffer' })

-- Yank to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Run shell command
vim.keymap.set("n", "<leader>sc", ":!", { desc = 'Set up shell command' })

-- ZenMode
vim.keymap.set("n", "<leader>z", ":ZenMode<CR>", { desc = 'Zen Mode' })

-- Format code in current buffer with LSP
vim.keymap.set("n", "<leader>cf", ":Format<CR>", { desc = 'LSP: [C]ode [F]ormat' })

-- Telescope keybindings
vim.keymap.set("n", "<leader>sk", "<cmd>:Telescope keymaps<CR>", { desc = 'search keybindings' })

-- vim-table-mode keybindings
vim.keymap.set("n", "<leader>tm", "<cmd>:TableModeToggle<CR>", { desc = 'toggle table mode' })

-- Move selected text:
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- nvim-dap
vim.keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Add breakpoint at current line" })
vim.keymap.set("n", "<leader>dc", "<cmd>DapContinue<CR>", {desc = "[D]ap [C]ontinue"})
vim.keymap.set("n", "<leader>dsi", "<cmd>DapStepInto<CR>", {desc = "[D]ap [S]tep [I]nto"})
vim.keymap.set("n", "<leader>dso", "<cmd>DapStepOut<CR>", {desc = "[D]ap [S]tep [O]ut"})
vim.keymap.set("n", "<leader>dsv", "<cmd>DapStepOver<CR>", {desc = "[D]ap [S]tep O[V]er"})
vim.keymap.set("n", "<leader>dt", "<cmd>DapTerminate<CR>", {desc = "[D]ap [T]erminate"})
