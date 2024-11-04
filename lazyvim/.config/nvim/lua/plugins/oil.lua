return {
  {
    "stevearc/oil.nvim",
    enabled = false,
    keys = {
      { "<leader>o", "<cmd>Oil --float<CR>", desc = "Oil Explorer" },
      { "<leader>O", "<cmd>Oil --float ./<CR>", desc = "Oil Explorer (cwd)" },
    },
    opts = {
      view_options = {
        show_hidden = true,
        is_always_hidden = function(name)
          -- se name in ".git", "_build", "deps", "node_modules"
          return vim.fn.match(name, [[\v(\.git|_build|deps|node_modules|.svelte-kit|.elixir_ls|.DS_Store)]]) > -1
        end,
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
