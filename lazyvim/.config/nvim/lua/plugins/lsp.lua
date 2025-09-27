return {
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = {
  --     incremental_selection = {
  --       enable = true,
  --       keymaps = {
  --         init_selection = "<Enter>",
  --         node_incremental = "<Enter>",
  --         -- scope_incremental = false,
  --         -- node_decremental = "<bs>",
  --       },
  --     },
  --   },
  -- },
  {
    "neovim/nvim-lspconfig",
    opts = { inlay_hints = { enabled = false } },
  },
}
