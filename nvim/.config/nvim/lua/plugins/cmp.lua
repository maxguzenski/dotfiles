return {
  {
    "hrsh7th/nvim-cmp",
    -- opts = {
    --   preselect = false,
    --   completion = { completeopt = "menu,menuone,noinsert,noselect" },
    --   experimental = { ghost_text = false },
    -- },
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.preselect = false
      opts.completion = { completeopt = "menu,menuone,noinsert,noselect" }
      opts.experimental = { ghost_text = false }

      opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
        ["<CR>"] = LazyVim.cmp.confirm({ select = false }),
      })
      -- opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
      --   ["<CR>"] = function(fallback)
      --     cmp.abort()
      --     fallback()
      --   end,
      -- })
      --
      return opts
    end,
  },
}
