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
    "EndOfBuffer",
    "FloatTitle",
    "ZenBg",
    "@neorg.tags.ranged_verbatim.code_block",
    "WinBarNC",
    "TabLineFill"
}

function ColorMyPencils()
    for _, i in pairs(groups) do
        vim.api.nvim_set_hl(0, i, { bg = 'none' })
    end

    vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#1f1f1f" })
end

ColorMyPencils()
