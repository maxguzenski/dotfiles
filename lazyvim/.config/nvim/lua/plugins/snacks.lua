return {
  "folke/snacks.nvim",
  opts = {
    indent = { enabled = true, scope = { enabled = true } },
    lazygit = { config = { gui = { showFileTree = false } } },

    picker = {
      formatters = {
        file = { filename_first = false, truncate = 120 },
      },
      layout = {
        preview = false,
        -- preset = function()
        --   return vim.o.columns >= 150 and "default" or "vertical"
        -- end,
      },
      layouts = {
        default = {},
        vertical = {},
      },
    },
  },
}
