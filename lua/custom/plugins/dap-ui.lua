return {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap" },
    opts = {},
    config = function()
        require('dapui').setup()
        vim.keymap.set(
            "n",
            "<leader>dui",
            "<cmd>lua require('dapui').toggle()<CR>",
            { desc = "Toggle dapui" }
        )
    end
}
