-- Custom keymaps for neovim
vim.keymap.set("n", "<leader>pv", "<cmd>:Explore<CR>")
vim.keymap.set("n", "<leader>lg", "<cmd>:LazyGit<CR>", { desc = 'spawn lazygit' })
vim.keymap.set("n", "<leader>hg", "<cmd>:lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = 'harpoon spawn gui' })
vim.keymap.set("n", "<leader>ha", "<cmd>:lua require('harpoon.mark').add_file()<CR>", { desc = 'harpoon add file' })
vim.keymap.set("n", "<leader>1", "<cmd>:lua require('harpoon.ui').nav_file(1)<CR>", { desc = 'harpoon go to file 1' })
vim.keymap.set("n", "<leader>2", "<cmd>:lua require('harpoon.ui').nav_file(2)<CR>", { desc = 'harpoon go to file 2' })
vim.keymap.set("n", "<leader>3", "<cmd>:lua require('harpoon.ui').nav_file(3)<CR>", { desc = 'harpoon go to file 3' })
vim.keymap.set("n", "<leader>4", "<cmd>:lua require('harpoon.ui').nav_file(4)<CR>", { desc = 'harpoon go to file 4' })
vim.keymap.set("n", "<leader>5", "<cmd>:lua require('harpoon.ui').nav_file(5)<CR>", { desc = 'harpoon go to file 5' })
vim.keymap.set("n", "<leader>6", "<cmd>:lua require('harpoon.ui').nav_file(6)<CR>", { desc = 'harpoon go to file 6' })
vim.keymap.set("n", "<leader>7", "<cmd>:lua require('harpoon.ui').nav_file(7)<CR>", { desc = 'harpoon go to file 7' })
vim.keymap.set("n", "<leader>8", "<cmd>:lua require('harpoon.ui').nav_file(8)<CR>", { desc = 'harpoon go to file 8' })
vim.keymap.set("n", "<leader>9", "<cmd>:lua require('harpoon.ui').nav_file(9)<CR>", { desc = 'harpoon go to file 9' })

-- Terminal mode keymaps
vim.keymap.set("t", "<C-\\>", "<C-\\><C-n>") -- Makes is so that Ctrl + \ goes into normal mode when in :term mode

-- TABS
vim.keymap.set("n", "<leader>th", "<cmd>:tabprevious<CR>", { desc = 'previous tab' })
vim.keymap.set("n", "<leader>tl", "<cmd>:tabnext<CR>", { desc = 'next tab' })
vim.keymap.set("n", "<leader>tn", "<cmd>:tabnew<CR>", { desc = 'new tab' })
vim.keymap.set("n", "<leader>tk", "<cmd>:tabclose<CR>", { desc = 'close current tab' })

-- half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

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
