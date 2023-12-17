-- Custom keymaps for neovim
vim.keymap.set("n", "<leader>pv", "<cmd>:Oil<CR>")
vim.keymap.set("n", "<leader>lg", "<cmd>:LazyGit<CR>", { desc = 'spawn lazygit' })

-- Terminal mode keymaps
vim.keymap.set("t", "<C-\\>", "<C-\\><C-n>") -- Makes is so that Ctrl + \ goes into normal mode when in :term mode

-- TABS
vim.keymap.set("n", "<leader>th", "<cmd>:tabprevious<CR>", { desc = 'previous tab' })
vim.keymap.set("n", "<leader>tl", "<cmd>:tabnext<CR>", { desc = 'next tab' })
vim.keymap.set("n", "<leader>tn", "<cmd>:tabnew<CR>", { desc = 'new tab' })
vim.keymap.set("n", "<leader>tk", "<cmd>:tabclose<CR>", { desc = 'close current tab' })

-- half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>M")
vim.keymap.set("n", "<C-u>", "<C-u>M")

-- BUFFERS
vim.keymap.set("n", "[b", "<cmd>:bprevious<CR>", { desc = 'previous buffer' })
vim.keymap.set("n", "]b", "<cmd>:bnext<CR>", { desc = 'next buffer' })

-- Yank to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Set up shell command
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
