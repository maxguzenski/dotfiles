return {
  "folke/snacks.nvim",
  opts = {
    indent = { enabled = true, scope = { enabled = true } },
    lazygit = { config = { gui = { showFileTree = false } } },

    explorer = {
      hidden = true,
    },

    picker = {
      hidden = true,
      sources = { files = { hidden = true } },

      formatters = {
        file = { filename_first = true, truncate = 120 },
      },
      layout = {
        preview = false,
        preset = "ivy",
        -- preset = function()
        --   return vim.o.columns >= 200 and "" or "myvertical"
        -- end,
      },
      layouts = {
        default = {},
        vertical = {},
      },
    },
  },
}
