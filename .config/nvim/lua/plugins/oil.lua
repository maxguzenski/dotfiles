return {
  {
    "stevearc/oil.nvim",
    -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
    config = function()
      require("oil").setup({
        view_options = {
          show_hidden = true, -- Mostrar arquivos ocultos
        },
        -- keymaps = {
        --   ["g?"] = "actions.show_help",
        --   ["<CR>"] = "actions.select",
        --   ["<C-v>"] = "actions.select_vsplit",
        --   ["<C-s>"] = "actions.select_split",
        --   ["<C-t>"] = "actions.select_tab",
        --   ["<C-p>"] = "actions.preview",
        --   ["q"] = "actions.close",
        -- },
      })
    end,
  },
}
