-- Testing some nvim apis


-- Using autocommands to change the statusline:
-- autmocmd for the mode changing:
-- 'ModeChanged'
local function changeStatusline()
    -- use 'opt_local' to prevent all statuslines from updating

    vim.opt_local.statusline = "[Normal] %= [%f]%m %= %h%r [%l,%c] [%P]"

    vim.api.nvim_create_autocmd("ModeChanged", {
        group = vim.api.nvim_create_augroup("ChangeStatusLine", { clear = true }),

        callback = function()
            local mode = vim.api.nvim_eval('mode()')
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

            local statusline = "[" .. modeName .. "] %= [%f]%m %= %h%r [%l,%c] [%P]"
            vim.opt_local.statusline = statusline
        end
    })
end

changeStatusline()
