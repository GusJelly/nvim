-- Groups supposed to be transparent
local groups = {
    "Normal",
    "NormalNC",
    "SignColumn",
    "NormalFloat",
    "FloatBorder",
    "Pmenu",
    "TelescopeNormal",
    "TelescopePromptNormal",
    "TelescopeBorder",
    "LineNr",
    "EndOfBuffer"
}

function ColorMyPencils()
    for _, i in pairs(groups) do
        vim.api.nvim_set_hl(0, i, { bg = 'none' })
    end

    -- vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#2f2f2f" })
    -- vim.api.nvim_set_hl(0, "NotifyBackground", { bg = "#0f0f0f" })
end

-- ColorMyPencils()
