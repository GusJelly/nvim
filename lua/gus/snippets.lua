-- html5 snippet
vim.keymap.set(
    "n",
    ",html",
    ":-1read ~/.config/nvim/lua/custom/snippets/html.html<CR>12jdd12k3jf>a"
)

-- Go error handling
vim.keymap.set(
    "n",
    ",err",
    ":-1read ~/.config/nvim/lua/custom/snippets/go.go<CR>3jdd1kcc"
)
