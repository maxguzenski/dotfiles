return {
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "catppuccin",
  --   },
  -- },
  {
    "folke/tokyonight.nvim",
    opts = {
      -- transparent = true,
      on_highlights = function(hl, c)
        -- hl.IblIndent = { fg = "#000000" }
        hl.IblScope = { fg = "#515b86" }
        hl.CursorLine = { bg = c.bg }
      end,
    },
  },
}
