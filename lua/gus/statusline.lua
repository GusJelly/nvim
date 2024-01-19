-- Using autocommands to change the statusline:
-- autmocmd for the mode changing:
-- 'ModeChanged'

-- Gets the current mode when ran
---@return string
local function getCurrentMode()
    local mode = vim.api.nvim_eval("mode()")
    local modeName = ""

    if mode == 'n' then
        modeName = "Normal"
    elseif mode == 'i' then
        modeName = "Insert"
    elseif mode == 'v' then
        modeName = "Visual"
    elseif mode == 'V' then
        modeName = "Visual Line"
    elseif mode == 'c' then
        modeName = "Command"
    elseif mode == 't' then
        modeName = "Terminal"
    else
        modeName = vim.api.nvim_eval('mode()')
    end

    return modeName
end

-- Actually redraws the statusline
local function changeStatusline()
    local branch = vim.fn.system("git branch --show-current 2> /dev/null | tr -d '\n'")

    vim.opt_local.statusline = "[Normal] " .. branch .. " %= [%f]%m %= %h%r [%l,%c] [%P]"

    vim.api.nvim_create_autocmd("ModeChanged", {
        group = vim.api.nvim_create_augroup("ChangeStatusLine", { clear = true }),

        callback = function()
            local modeName = getCurrentMode()

            local statusline = "[" .. modeName .. "] " .. branch .. " %= [%f]%m %= %h%r [%l,%c] [%P]"

            vim.opt_local.statusline = statusline
        end
    })
end

changeStatusline()
