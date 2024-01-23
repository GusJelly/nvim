return {
  -- Main orgmode plugin
  {
    'nvim-orgmode/orgmode',
    dependencies = {
      { 'nvim-treesitter/nvim-treesitter', lazy = true },
    },
    event = 'VeryLazy',
    config = function()
      -- Load treesitter grammar for org
      require('orgmode').setup_ts_grammar()

      -- Setup treesitter
      ---@diagnostic disable-next-line: missing-fields
      require('nvim-treesitter.configs').setup({
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = { 'org' },
        },
        ensure_installed = { 'org' },
      })

      -- Setup orgmode
      require('orgmode').setup({
        org_agenda_files = '~/orgfiles/**/*',
        org_default_notes_file = '~/orgfiles/refile.org',
        org_startup_folded = "showeverything",
        org_hide_leading_stars = true,
        org_hide_emphasis_markers = true,
      })
    end
  },

  -- Org Bullets
  {
    'GusJelly/org-bullets.nvim',
  },

  -- Org wiki
  {
    "ranjithshegde/orgWiki.nvim",
    config = function()
      require("orgWiki").setup {
        wiki_path = { "~/orgfiles/wiki/" },
        diary_path = "~/orgfiles/wiki/diary/",
      }
    end,
  }
}
