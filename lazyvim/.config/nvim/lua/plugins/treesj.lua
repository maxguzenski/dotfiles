return {
  "Wansmer/treesj",
  dependencies = { "nvim-treesitter/nvim-treesitter" }, -- if you install parsers with `nvim-treesitter`
  config = function()
    require("treesj").setup({ use_default_keymaps = false })
    vim.keymap.set("n", "<leader>m", require("treesj").toggle, { desc = "Join or split list/map/etc" })
  end,
}
