return {
    "ranjithshegde/orgWiki.nvim",
    config = function()
        require("orgWiki").setup {
            wiki_path = { "~/org/wiki/" },
            diary_path = "~/org/wiki/diary/",
        }
    end,
}
