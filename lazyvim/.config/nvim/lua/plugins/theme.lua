return {
  { "projekt0n/github-nvim-theme", name = "github-theme" },
  -- { "dracula/vim", name = "dracula-vim" },
  { "EdenEast/nightfox.nvim" },

  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      transparent = true,
      on_highlights = function(hl, _)
        hl.SnacksIndent = { fg = "#2d324a" }
        hl.SnacksIndentScope = { fg = "#3b4261" }
      end,
    },
  },
  -- {
  --   "rebelot/kanagawa.nvim",
  --   opts = {},
  -- },
}
