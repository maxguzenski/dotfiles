return {
  {
    "stevearc/oil.nvim",
    keys = {
      { "<leader>o", "<cmd>Oil --float<CR>", desc = "Oil Explorer" },
      { "<leader>O", "<cmd>Oil --float ./<CR>", desc = "Oil Explorer (cwd)" },
    },
    opts = {
      view_options = {
        show_hidden = true,
      },
      float = {
        padding = 5,
        max_width = 120,
      },
      keymaps = {
        ["q"] = "actions.close",
      },
    },
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
}
