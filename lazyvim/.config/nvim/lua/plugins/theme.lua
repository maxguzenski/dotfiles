return {
  { "EdenEast/nightfox.nvim" },
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
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
