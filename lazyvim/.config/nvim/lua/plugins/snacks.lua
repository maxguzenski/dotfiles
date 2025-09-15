return {
  "folke/snacks.nvim",
  opts = {
    indent = { enabled = true, scope = { enabled = true } },
    lazygit = { config = { gui = { showFileTree = false } } },

    picker = {
      formatters = {
        file = { filename_first = true, truncate = 120 },
      },
      layout = {
        preview = true,
        preset = function()
          return vim.o.columns >= 200 and "default" or "myvertical"
        end,
      },
      layouts = {
        default = {},
        vertical = {},

        myvertical = {
          layout = {
            backdrop = false,
            width = 0.65,
            min_width = 80,
            height = 0.65,
            min_height = 30,
            box = "vertical",
            border = "rounded",
            title = "{title} {live} {flags}",
            title_pos = "center",
            { win = "input", height = 1, border = "bottom" },
            { win = "list", border = "none" },
            { win = "preview", title = "{preview}", height = 0.5, border = "top" },
          },
        },
      },
    },
  },
}
