return {
  {
    "sustech-data/wildfire.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("wildfire").setup()
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = { inlay_hints = { enabled = false } },
  },
}
